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
import 'remove_subscriber_command.dart';

@singleton
class RemoveSubscriberCommandHandler extends RequestHandler<
    RemoveSubscriberCommand, Either<List<DetailedException>, UserInfoResult>> {
  const RemoveSubscriberCommandHandler({
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
    RemoveSubscriberCommand request,
  ) async {
    if (request.removeUserID.isStaffID) {
      return left(
        [const CanNotDoThisToStaffUser()],
      );
    }

    if (request.userID == request.removeUserID) {
      return left(
        [const CanNotDoThisToYourself()],
      );
    }

    final userToRemove =
        await _endUserRepository.getByID(id: request.removeUserID);

    if (userToRemove == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final isSubscriber = await _endUserRepository.isSubscriber(
      subscriberID: request.removeUserID,
      publisherID: request.userID,
    );

    if (!isSubscriber) {
      return left(
        [const NotYourSubscriber()],
      );
    }

    await _endUserRepository.unsubscribe(
      subscriberID: request.removeUserID,
      publisherID: request.userID,
    );

    final updatedUserToRemove =
        await _endUserRepository.getByID(id: request.removeUserID);

    if (updatedUserToRemove == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.removeUserID);
    final avatarsAmount =
        await _endUserRepository.getAvatarsAmount(id: request.removeUserID);
    final avatar = await _endUserRepository.getAvatar(id: request.removeUserID);

    final friendsAmount = await _endUserRepository.getFriendsAmount(
      userID: request.removeUserID,
    );
    final subscribersAmount = await _endUserRepository.getSubscribersAmount(
      userID: request.removeUserID,
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
          updatedUserToRemove,
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
