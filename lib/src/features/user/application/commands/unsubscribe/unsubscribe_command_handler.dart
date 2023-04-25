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
import 'unsubscribe_command.dart';

@singleton
class UnsubscribeCommandHandler extends RequestHandler<UnsubscribeCommand,
    Either<List<DetailedException>, UserInfoResult>> {
  const UnsubscribeCommandHandler({
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
    UnsubscribeCommand request,
  ) async {
    if (request.unsubscribeUserID.isStaffID) {
      return left(
        [const CanNotDoThisToStaffUser()],
      );
    }

    if (request.userID == request.unsubscribeUserID) {
      return left(
        [const CanNotDoThisToYourself()],
      );
    }

    final publisher =
        await _endUserRepository.getByID(id: request.unsubscribeUserID);

    if (publisher == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final isPublisher = await _endUserRepository.isPublisher(
      subscriberID: request.userID,
      publisherID: request.unsubscribeUserID,
    );

    if (!isPublisher) {
      return left(
        [const YouAreNotSubscriber()],
      );
    }

    await _endUserRepository.unsubscribe(
      subscriberID: request.userID,
      publisherID: request.unsubscribeUserID,
    );

    final updatedPublisher =
        await _endUserRepository.getByID(id: request.unsubscribeUserID);

    if (updatedPublisher == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.unsubscribeUserID);
    final avatarsAmount = await _endUserRepository.getAvatarsAmount(
      id: request.unsubscribeUserID,
    );
    final avatar =
        await _endUserRepository.getAvatar(id: request.unsubscribeUserID);

    final friendsAmount = await _endUserRepository.getFriendsAmount(
      userID: request.unsubscribeUserID,
    );
    final subscribersAmount = await _endUserRepository.getSubscribersAmount(
      userID: request.unsubscribeUserID,
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
          updatedPublisher,
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
