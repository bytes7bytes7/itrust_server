import 'package:mapster/mapster.dart';

import '../../../common/application/mapper_dto/to_user_info_vm.dart';
import '../../../common/domain/domain.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

class UserToUserInfoVMMapper
    extends TwoSourcesMapper<User, ToUserInfoVM, UserInfoVM> {
  UserToUserInfoVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserInfoVM map() {
    final user = _user;

    if (user is EndUser) {
      return _mapster.map2(
        user,
        _dto,
        To<UserInfoVM>(),
      );
    } else if (user is StaffUser) {
      return _mapster.map2(
        user,
        _dto,
        To<UserInfoVM>(),
      );
    }

    throw Exception('Unknown type of user');
  }

  User get _user => source1;

  ToUserInfoVM get _dto => source2;
}
