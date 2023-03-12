import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RemoveDeviceRequestIDToRemoveDeviceCommandMapper
    extends TwoSourcesMapper<RemoveDeviceRequest, UserID, RemoveDeviceCommand> {
  RemoveDeviceRequestIDToRemoveDeviceCommandMapper(super.input);

  @override
  RemoveDeviceCommand map() {
    return RemoveDeviceCommand(
      userID: _userID,
      sessionID: _request.sessionID,
      password: _request.password,
    );
  }

  RemoveDeviceRequest get _request => source1;

  UserID get _userID => source2;
}
