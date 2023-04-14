import 'package:mapster/mapster.dart';

import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class UserToUserVMMapper extends OneSourceMapper<User, UserVM> {
  UserToUserVMMapper(super.input);

  @override
  UserVM map() {
    return _user.map(
      end: (user) {
        return UserVM.end(
          id: user.id,
          email: user.email,
          firstName: user.firstName,
          avatarUrls: user.avatarUrls,
          friendsAmount: user.friends.length,
          lastName: user.lastName,
          nick: user.nick,
        );
      },
      staff: (user) {
        return UserVM.staff(
          id: user.id,
          name: user.name,
          avatarUrls: user.avatarUrls,
        );
      },
    );
  }

  User get _user => source;
}
