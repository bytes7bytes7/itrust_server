import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class UserToUserInfoVMMapper
    extends ThreeSourcesMapper<User, UserID, bool, UserInfoVM> {
  UserToUserInfoVMMapper(super.input);

  @override
  UserInfoVM map() {
    final user = _user;

    if (user is EndUser) {
      return UserInfoVM.end(
        id: user.id,
        email: user.email,
        firstName: user.firstName,
        avatarUrls: user.avatarUrls,
        friendsAmount: user.friends.length,
        postsAmount: user.posts.length,
        subscribersAmount: user.subscribers.length,
        amIFriend: user.friends.contains(_userID),
        amISubscriber: user.subscribers.contains(_userID),
        didISentFriendBid: _didISentFriendBid,
        lastName: user.lastName,
        nick: user.nick,
      );
    } else if (user is StaffUser) {
      return UserInfoVM.staff(
        id: user.id,
        name: user.name,
        avatarUrls: user.avatarUrls,
        nick: user.nick,
      );
    }

    throw Exception('Unknown type of user');
  }

  User get _user => source1;

  UserID get _userID => source2;

  bool get _didISentFriendBid => source3;
}
