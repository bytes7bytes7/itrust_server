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
import 'send_friend_bid_command.dart';

@singleton
class SendFriendBidCommandHandler extends RequestHandler<SendFriendBidCommand,
    Either<List<DetailedException>, UserInfoResult>> {
  const SendFriendBidCommandHandler({
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
    SendFriendBidCommand request,
  ) async {
    if (request.sendToUserID.isStaffUserID) {
      return left(
        [const CanNotDoThisToStaffUser()],
      );
    }

    if (request.userID == request.sendToUserID) {
      return left(
        [const CanNotDoThisToYourself()],
      );
    }

    final otherUser =
        await _endUserRepository.getByID(id: request.sendToUserID);

    if (otherUser == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final hasAlreadySentBid = await _endUserRepository.hasBidToUser(
      from: request.userID,
      to: request.sendToUserID,
    );

    if (hasAlreadySentBid) {
      return left(
        [const BidAlreadySent()],
      );
    }

    final haveIFriendBidFromThisUser = await _endUserRepository.hasBidToUser(
      from: request.sendToUserID,
      to: request.userID,
    );

    if (haveIFriendBidFromThisUser) {
      return left(
        [const AlreadyHaveBid()],
      );
    }

    final isFriend = await _endUserRepository.isFriend(
      firstUserID: request.sendToUserID,
      secondUserID: request.userID,
    );

    if (isFriend) {
      return left(
        [const YouAlreadyFriends()],
      );
    }

    final isOtherUserSubscriber = await _endUserRepository.isSubscriber(
      subscriberID: request.userID,
      publisherID: request.sendToUserID,
    );

    if (isOtherUserSubscriber) {
      return left(
        [const YouAreSubscriber()],
      );
    }

    final isThisUserSubscriber = await _endUserRepository.isSubscriber(
      subscriberID: request.sendToUserID,
      publisherID: request.userID,
    );

    if (isThisUserSubscriber) {
      return left(
        [const IsYourSubscriber()],
      );
    }

    await _endUserRepository.addFriendBid(
      from: request.userID,
      to: request.sendToUserID,
    );

    final updatedOtherUser =
        await _endUserRepository.getByID(id: request.sendToUserID);

    if (updatedOtherUser == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.sendToUserID);

    final didISentFriendBid = true;

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
