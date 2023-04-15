import 'package:mapster/mapster.dart';

import '../../../../repositories/interfaces/end_user_activity_repository.dart';
import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class UserToUserInfoVMMapper
    extends FourSourcesMapper<User, UserID, bool, OnlineStatus, UserInfoVM> {
  UserToUserInfoVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserInfoVM map() {
    final user = _user;

    if (user is EndUser) {
      return _mapster.map4(
        user,
        _userID,
        _didISentFriendBid,
        _onlineStatus,
        To<UserInfoVM>(),
      );
    } else if (user is StaffUser) {
      return _mapster.map4(
        user,
        _userID,
        _didISentFriendBid,
        _onlineStatus,
        To<UserInfoVM>(),
      );
    }

    throw Exception('Unknown type of user');
  }

  User get _user => source1;

  UserID get _userID => source2;

  bool get _didISentFriendBid => source3;

  OnlineStatus get _onlineStatus => source4;
}
