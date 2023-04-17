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
import 'cancel_friend_bid_command.dart';

@singleton
class CancelFriendBidCommandHandler extends RequestHandler<
    CancelFriendBidCommand, Either<List<DetailedException>, UserInfoResult>> {
  const CancelFriendBidCommandHandler({
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
    CancelFriendBidCommand request,
  ) async {
    if (request.cancelToUserID.isStaffUserID) {
      return left(
        [const CanNotDoThisToStaffUser()],
      );
    }

    if (request.userID == request.cancelToUserID) {
      return left(
        [const CanNotDoThisToYourself()],
      );
    }

    final user = await _endUserRepository.getByID(id: request.cancelToUserID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final hasAlreadySentBid = await _endUserRepository.hasBidToUser(
      from: request.userID,
      to: request.cancelToUserID,
    );

    if (!hasAlreadySentBid) {
      return left(
        [const BidNotFound()],
      );
    }

    await _endUserRepository.removeFriendBid(
      from: request.userID,
      to: request.cancelToUserID,
    );

    final updatedUser =
        await _endUserRepository.getByID(id: request.cancelToUserID);

    if (updatedUser == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.cancelToUserID);

    final didISentFriendBid = false;
    final haveIFriendBidFromThisUser = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map5(
          updatedUser,
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
