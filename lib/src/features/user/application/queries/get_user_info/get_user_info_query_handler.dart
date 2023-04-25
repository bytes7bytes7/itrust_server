import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_user_info_vm.dart';
import '../../../../common/application/mapper_dto/to_user_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../view_models/user_info_vm/user_info_vm.dart';
import 'get_user_info_query.dart';

@singleton
class GetUserInfoQueryHandler extends RequestHandler<GetUserInfoQuery,
    Either<List<DetailedException>, UserInfoResult>> {
  const GetUserInfoQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required EndUserActivityRepository endUserActivityRepository,
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository,
        _endUserActivityRepository = endUserActivityRepository,
        _postRepository = postRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;
  final EndUserActivityRepository _endUserActivityRepository;
  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, UserInfoResult>> handle(
    GetUserInfoQuery request,
  ) async {
    User? user;

    if (request.aboutUserID.isEndID) {
      user = await _endUserRepository.getByID(id: request.aboutUserID);
    } else if (request.aboutUserID.isStaffID) {
      user = await _staffUserRepository.getByID(id: request.aboutUserID);
    }

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final onlineStatus =
        await _endUserActivityRepository.get(request.aboutUserID);
    final avatarsAmount =
        await _endUserRepository.getAvatarsAmount(id: request.aboutUserID);
    final avatar = await _endUserRepository.getAvatar(id: request.aboutUserID);

    final friendsAmount = await _endUserRepository.getFriendsAmount(
      userID: request.aboutUserID,
    );
    final subscribersAmount = await _endUserRepository.getSubscribersAmount(
      userID: request.aboutUserID,
    );
    final postsAmount =
        await _postRepository.getUserPostsAmount(userID: request.userID);

    final amIFriend = await _endUserRepository.isFriend(
      firstUserID: request.userID,
      secondUserID: request.aboutUserID,
    );
    final amISubscriber = await _endUserRepository.isSubscriber(
      subscriberID: request.userID,
      publisherID: request.aboutUserID,
    );
    final areTheySubscribedToMe = await _endUserRepository.isSubscriber(
      subscriberID: request.aboutUserID,
      publisherID: request.userID,
    );
    final didISentFriendBid = await _endUserRepository.hasBidToUser(
      from: request.userID,
      to: request.aboutUserID,
    );
    final haveIFriendBidFromThisUser = await _endUserRepository.hasBidToUser(
      from: request.aboutUserID,
      to: request.userID,
    );

    return right(
      UserInfoResult(
        userInfo: _mapster.map2(
          user,
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
