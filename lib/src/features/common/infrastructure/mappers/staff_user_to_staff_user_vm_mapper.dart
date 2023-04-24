import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class StaffUserToStaffUserVMMapper
    extends TwoSourcesMapper<StaffUser, ToUserVM, StaffUserVM> {
  StaffUserToStaffUserVMMapper(super.input);

  @override
  StaffUserVM map() {
    return StaffUserVM(
      id: _user.id,
      name: _user.name,
      avatarsAmount: _dto.avatarsAmount,
      nick: _user.nick,
      avatarUrl: _dto.avatarUrl,
    );
  }

  StaffUser get _user => source1;

  ToUserVM get _dto => source2;
}
