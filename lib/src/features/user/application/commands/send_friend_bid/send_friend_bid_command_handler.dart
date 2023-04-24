import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_user_info_vm.dart';
import '../../../../common/application/mapper_dto/to_user_vm.dart';
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
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _postRepository = postRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final PostRepository _postRepository;
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

    final haveIAlreadyFriendBidFromThisUser =
        await _endUserRepository.hasBidToUser(
      from: request.sendToUserID,
      to: request.userID,
    );

    if (haveIAlreadyFriendBidFromThisUser) {
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
    final avatarsAmount =
        await _endUserRepository.getAvatarsAmount(id: request.sendToUserID);
    final avatar = await _endUserRepository.getAvatar(id: request.sendToUserID);

    final friendsAmount = await _endUserRepository.getFriendsAmount(
      userID: request.sendToUserID,
    );
    final subscribersAmount = await _endUserRepository.getSubscribersAmount(
      userID: request.sendToUserID,
    );
    final postsAmount =
        await _postRepository.getUserPostsAmount(userID: request.userID);

    final amIFriend = false;
    final amISubscriber = false;
    final areTheySubscribedToMe = false;
    final didISentFriendBid = true;
    final haveIFriendBidFromThisUser = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map2(
          updatedOtherUser,
          ToUserInfoVM(
            toUserVM: ToUserVM(
              onlineStatus: onlineStatus,
              avatarsAmount: avatarsAmount,
              avatarUrl: avatar,
            ),
            friendsAmount: friendsAmount,
            subscribersAmount: subscribersAmount,
            postsAmount: postsAmount,
            amIFriend: amIFriend,
            amISubscriber: amISubscriber,
            areTheySubscribedToMe: areTheySubscribedToMe,
            didISentFriendBid: didISentFriendBid,
            haveIFriendBidFromThisUser: haveIFriendBidFromThisUser,
          ),
          To<UserInfoVM>(),
        ),
      ),
    );
  }
}
