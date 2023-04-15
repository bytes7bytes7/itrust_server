import 'package:mapster/mapster.dart';

import '../../../../repositories/interfaces/end_user_activity_repository.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class EndUserToEndUserVMMapper
    extends TwoSourcesMapper<EndUser, OnlineStatus, EndUserVM> {
  EndUserToEndUserVMMapper(super.input);

  @override
  EndUserVM map() {
    return EndUserVM(
      id: _user.id,
      email: _user.email,
      firstName: _user.firstName,
      avatarUrls: _user.avatarUrls,
      lastName: _user.lastName,
      nick: _user.nick,
      isOnline: _onlineStatus.isOnline,
      lastSeenAtMSSinceEpoch: _onlineStatus.lastSeenAtMSSinceEpoch,
    );
  }

  EndUser get _user => source1;

  OnlineStatus get _onlineStatus => source2;
}
