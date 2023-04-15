import 'package:mapster/mapster.dart';

import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class StaffUserToUserInfoVMMapper
    extends OneSourceMapper<StaffUser, UserInfoVM> {
  StaffUserToUserInfoVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserInfoVM map() {
    return UserInfoVM.staff(
      user: _mapster.map1(_user, To<StaffUserVM>()),
    );
  }

  StaffUser get _user => source;
}
