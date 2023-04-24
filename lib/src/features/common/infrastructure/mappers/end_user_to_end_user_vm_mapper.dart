import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/domain.dart';

class EndUserToEndUserVMMapper
    extends TwoSourcesMapper<EndUser, ToUserVM, EndUserVM> {
  EndUserToEndUserVMMapper(super.input);

  @override
  EndUserVM map() {
    return EndUserVM(
      id: _user.id,
      email: _user.email,
      firstName: _user.firstName,
      lastName: _user.lastName,
      avatarsAmount: _dto.avatarsAmount,
      nick: _user.nick,
      isOnline: _dto.onlineStatus.isOnline,
      avatarUrl: _dto.avatarUrl,
      lastSeenAtMSSinceEpoch: _dto.onlineStatus.lastSeenAtMSSinceEpoch,
    );
  }

  EndUser get _user => source1;

  ToUserVM get _dto => source2;
}
