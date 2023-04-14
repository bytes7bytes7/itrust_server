import 'package:mapster/mapster.dart';

import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class EndUserToEndUserVMMapper extends OneSourceMapper<EndUser, EndUserVM> {
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
    );
  }

  EndUser get _user => source;
}
