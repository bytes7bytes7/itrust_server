import 'package:mapster/mapster.dart';

import '../../../common/common.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class ChangePersonalInfoRequestToChangePersonalInfoCommandMapper
    extends TwoSourcesMapper<ChangePersonalInfoRequest, UserID,
        ChangePersonalInfoCommand> {
  ChangePersonalInfoRequestToChangePersonalInfoCommandMapper(super.input);

  @override
  ChangePersonalInfoCommand map() {
    return ChangePersonalInfoCommand(
      userID: _userID,
      firstName: _request.firstName,
      lastName: _request.lastName,
    );
  }

  ChangePersonalInfoRequest get _request => source1;

  UserID get _userID => source2;
}
