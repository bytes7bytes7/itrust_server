import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class EndUserToUserInfoVMMapper
    extends ThreeSourcesMapper<EndUser, UserID, bool, UserInfoVM> {
  EndUserToUserInfoVMMapper(super.input);

  @override
  UserInfoVM map() {
    return UserInfoVM.end(
      id: _user.id,
      email: _user.email,
      firstName: _user.firstName,
      avatarUrls: _user.avatarUrls,
      friendsAmount: _user.friends.length,
      postsAmount: _user.posts.length,
      subscribersAmount: _user.subscribers.length,
      amIFriend: _user.friends.contains(_userID),
      amISubscriber: _user.subscribers.contains(_userID),
      didISentFriendBid: _didISentFriendBid,
      lastName: _user.lastName,
      nick: _user.nick,
    );
  }

  EndUser get _user => source1;

  UserID get _userID => source2;

  bool get _didISentFriendBid => source3;
}
