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
import 'cancel_friend_bid_command.dart';

@singleton
class CancelFriendBidCommandHandler extends RequestHandler<
    CancelFriendBidCommand, Either<List<DetailedException>, UserInfoResult>> {
  const CancelFriendBidCommandHandler({
    required FriendBidRepository friendBidRepository,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _friendBidRepository = friendBidRepository,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final FriendBidRepository _friendBidRepository;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UserInfoResult>> handle(
    CancelFriendBidCommand request,
  ) async {
    if (request.cancelToUserID.isStaffUserID) {
      return left(
        [const CanNotCancelFriendBidToStaffUser()],
      );
    }

    if (request.userID == request.cancelToUserID) {
      return left(
        [const CanNotCancelFriendBidToYourself()],
      );
    }

    // specify type for mapper
    final User? user =
        await _endUserRepository.getByID(id: request.cancelToUserID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final hasBidAlready = await _friendBidRepository.hasBidToUser(
      from: request.userID,
      to: request.cancelToUserID,
    );

    if (!hasBidAlready) {
      return left(
        [const BidNotFound()],
      );
    }

    await _friendBidRepository.remove(
      from: request.userID,
      to: request.cancelToUserID,
    );

    final didISentFriendBid = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map3(
          user,
          request.userID,
          didISentFriendBid,
          To<UserInfoVM>(),
        ),
      ),
    );
  }
}
