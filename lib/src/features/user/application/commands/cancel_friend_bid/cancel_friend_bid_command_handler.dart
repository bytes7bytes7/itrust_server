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
import 'cancel_friend_bid_command.dart';

@singleton
class CancelFriendBidCommandHandler extends RequestHandler<
    CancelFriendBidCommand, Either<List<DetailedException>, UserInfoResult>> {
  const CancelFriendBidCommandHandler({
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
    final avatarsAmount =
        await _endUserRepository.getAvatarsAmount(id: request.cancelToUserID);
    final avatar =
        await _endUserRepository.getAvatar(id: request.cancelToUserID);

    final friendsAmount = await _endUserRepository.getFriendsAmount(
      userID: request.cancelToUserID,
    );
    final subscribersAmount = await _endUserRepository.getSubscribersAmount(
      userID: request.cancelToUserID,
    );
    final postsAmount =
        await _postRepository.getUserPostsAmount(userID: request.userID);

    final amIFriend = false;
    final amISubscriber = false;
    final areTheySubscribedToMe = false;
    final didISentFriendBid = false;
    final haveIFriendBidFromThisUser = false;

    return right(
      UserInfoResult(
        userInfo: _mapster.map2(
          updatedUser,
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
