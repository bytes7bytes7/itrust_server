import 'package:mapster/mapster.dart';

import '../../../common/application/mapper_dto/to_user_info_vm.dart';
import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class StaffUserToUserInfoVMMapper
    extends TwoSourcesMapper<StaffUser, ToUserInfoVM, UserInfoVM> {
  StaffUserToUserInfoVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserInfoVM map() {
    return UserInfoVM.staff(
      user: _mapster.map2(
        _user,
        _dto.toUserVM,
        To<StaffUserVM>(),
      ),
    );
  }

  StaffUser get _user => source1;

  ToUserInfoVM get _dto => source2;
}
