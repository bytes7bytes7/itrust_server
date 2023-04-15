import 'package:mapster/mapster.dart';

import '../../../../repositories/interfaces/end_user_activity_repository.dart';
import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class UserToUserInfoVMMapper extends FiveSourcesMapper<User, UserID, bool, bool,
    OnlineStatus, UserInfoVM> {
  UserToUserInfoVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserInfoVM map() {
    final user = _user;

    if (user is EndUser) {
      return _mapster.map5(
        user,
        _userID,
        _didISentFriendBid,
        _haveIFriendBidFromThisUser,
        _onlineStatus,
        To<UserInfoVM>(),
      );
    } else if (user is StaffUser) {
      return _mapster.map1(
        user,
        To<UserInfoVM>(),
      );
    }

    throw Exception('Unknown type of user');
  }

  User get _user => source1;

  UserID get _userID => source2;

  bool get _didISentFriendBid => source3;

  bool get _haveIFriendBidFromThisUser => source4;

  OnlineStatus get _onlineStatus => source5;
}
