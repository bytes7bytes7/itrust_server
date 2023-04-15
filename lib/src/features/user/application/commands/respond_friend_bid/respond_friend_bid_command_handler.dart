import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/user_info_vm/user_info_vm.dart';
import 'respond_friend_bid_command.dart';

@singleton
class RespondFriendBidCommandHandler extends RequestHandler<
    RespondFriendBidCommand, Either<List<DetailedException>, UserInfoResult>> {
  const RespondFriendBidCommandHandler({
    required FriendBidRepository friendBidRepository,
    required EndUserRepository endUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required Mapster mapster,
  })  : _friendBidRepository = friendBidRepository,
        _endUserRepository = endUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _mapster = mapster;

  final FriendBidRepository _friendBidRepository;
  final EndUserRepository _endUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UserInfoResult>> handle(
    RespondFriendBidCommand request,
  ) async {
    if (request.respondToUserID.isStaffUserID) {
      return left(
        [const CanNotRespondFriendBidToStaffUser()],
      );
    }

    if (request.userID == request.respondToUserID) {
      return left(
        [const CanNotRespondFriendBidToYourself()],
      );
    }

    final user = await _endUserRepository.getByID(id: request.respondToUserID);
    final thisUser = await _endUserRepository.getByID(id: request.userID);

    if (user == null || thisUser == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final hasBid = await _friendBidRepository.hasBidToUser(
      from: request.respondToUserID,
      to: request.userID,
    );

    if (!hasBid) {
      return left(
        [const BidNotFound()],
      );
    }

    await _friendBidRepository.remove(
      from: request.respondToUserID,
      to: request.userID,
    );

    late EndUser updatedThisUser;
    late EndUser updatedOtherUser;

    if (request.accept) {
      updatedThisUser = thisUser.copyWith(
        friends: List.of(thisUser.friends)..add(request.respondToUserID),
      );

      updatedOtherUser = user.copyWith(
        friends: List.of(user.friends)..add(request.userID),
      );
    } else {
      updatedThisUser = thisUser.copyWith(
        subscribers: List.of(thisUser.subscribers)
          ..add(request.respondToUserID),
      );

      updatedOtherUser = user.copyWith(
        subscribers: List.of(user.subscribers)..add(request.userID),
      );
    }

    await _endUserRepository.addOrUpdate(user: updatedThisUser);
    await _endUserRepository.addOrUpdate(user: updatedOtherUser);

    final onlineStatus =
        await _endUserActivityRepository.get(request.respondToUserID);

    final didISentFriendBid = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map4(
          updatedOtherUser,
          request.userID,
          didISentFriendBid,
          onlineStatus,
          To<UserInfoVM>(),
        ),
      ),
    );
  }
}
