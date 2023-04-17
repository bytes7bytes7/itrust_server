import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/user_info_vm/user_info_vm.dart';
import 'respond_friend_bid_command.dart';

@singleton
class RespondFriendBidCommandHandler extends RequestHandler<
    RespondFriendBidCommand, Either<List<DetailedException>, UserInfoResult>> {
  const RespondFriendBidCommandHandler({
    required EndUserRepository endUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _mapster = mapster;

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

    final thisUser = await _endUserRepository.getByID(id: request.userID);
    final otherUser =
        await _endUserRepository.getByID(id: request.respondToUserID);

    if (thisUser == null || otherUser == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final hasBid = await _endUserRepository.hasBidToUser(
      from: request.respondToUserID,
      to: request.userID,
    );

    if (!hasBid) {
      return left(
        [const BidNotFound()],
      );
    }

    await _endUserRepository.removeFriendBid(
      from: request.respondToUserID,
      to: request.userID,
    );

    if (request.accept) {
      await _endUserRepository.addFriend(
        firstUserID: request.userID,
        secondUserID: request.respondToUserID,
      );
    } else {
      await _endUserRepository.subscribe(
        subscriberID: request.respondToUserID,
        publisherID: request.userID,
      );
    }

    final updatedOtherUser =
        await _endUserRepository.getByID(id: request.respondToUserID);

    if (updatedOtherUser == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.respondToUserID);

    final didISentFriendBid = false;
    final haveIFriendBidFromThisUser = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map5(
          updatedOtherUser,
          request.userID,
          didISentFriendBid,
          haveIFriendBidFromThisUser,
          onlineStatus,
          To<UserInfoVM>(),
        ),
      ),
    );
  }
}
