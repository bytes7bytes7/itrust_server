import 'package:mapster/mapster.dart';

import '../../../../repositories/interfaces/end_user_activity_repository.dart';
import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class EndUserToUserInfoVMMapper extends FiveSourcesMapper<EndUser, UserID, bool,
    bool, OnlineStatus, UserInfoVM> {
  EndUserToUserInfoVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserInfoVM map() {
    return UserInfoVM.end(
      user: _mapster.map2(_user, _onlineStatus, To<EndUserVM>()),
      friendsAmount: _user.friends.length,
      postsAmount: _user.posts.length,
      subscribersAmount: _user.subscribers.length,
      amIFriend: _user.friends.contains(_userID),
      amISubscriber: _user.subscribers.contains(_userID),
      didISentFriendBid: _didISentFriendBid,
      haveIFriendBidFromThisUser: _haveIFriendBidFromThisUser,
    );
  }

  EndUser get _user => source1;

  UserID get _userID => source2;

  bool get _didISentFriendBid => source3;

  bool get _haveIFriendBidFromThisUser => source4;

  OnlineStatus get _onlineStatus => source5;
}
