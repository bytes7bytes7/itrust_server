import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class StaffUserToUserInfoVMMapper
    extends ThreeSourcesMapper<StaffUser, UserID, bool, UserInfoVM> {
  StaffUserToUserInfoVMMapper(super.input);

  @override
  UserInfoVM map() {
    return UserInfoVM.staff(
      id: _user.id,
      name: _user.name,
      avatarUrls: _user.avatarUrls,
      nick: _user.nick,
    );
  }

  StaffUser get _user => source1;
}
