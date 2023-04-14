import 'package:mapster/mapster.dart';

import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class StaffUserToStaffUserVMMapper
    extends OneSourceMapper<StaffUser, StaffUserVM> {
  StaffUserToStaffUserVMMapper(super.input);

  @override
  StaffUserVM map() {
    return StaffUserVM(
      id: _user.id,
      name: _user.name,
      avatarUrls: _user.avatarUrls,
    );
  }

  StaffUser get _user => source;
}
