import 'package:mapster/mapster.dart';

import '../../../common/common.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class LogOutRequestUserToLogOutCommandMapper
    extends TwoSourcesMapper<LogOutRequest, EndUser, LogOutCommand> {
  LogOutRequestUserToLogOutCommandMapper(super.input);

  @override
  LogOutCommand map() {
    return LogOutCommand(
      user: _user,
    );
  }

  EndUser get _user => source2;
}
