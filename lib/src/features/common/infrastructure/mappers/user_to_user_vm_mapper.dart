import 'package:mapster/mapster.dart';

import '../../../../repositories/interfaces/end_user_activity_repository.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class UserToUserVMMapper extends TwoSourcesMapper<User, OnlineStatus, UserVM> {
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
          lastName: user.lastName,
          nick: user.nick,
          isOnline: _onlineStatus.isOnline,
          lastSeenAtMSSinceEpoch: _onlineStatus.lastSeenAtMSSinceEpoch,
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

  User get _user => source1;

  OnlineStatus get _onlineStatus => source2;
}
