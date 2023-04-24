import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class UserToUserVMMapper extends TwoSourcesMapper<User, ToUserVM, UserVM> {
  UserToUserVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserVM map() {
    return _user.map(
      end: (user) {
        return _mapster.map2(
          user,
          _dto,
          To<EndUserVM>(),
        );
      },
      staff: (user) {
        return _mapster.map2(
          user,
          _dto,
          To<StaffUserVM>(),
        );
      },
    );
  }

  User get _user => source1;

  ToUserVM get _dto => source2;
}
