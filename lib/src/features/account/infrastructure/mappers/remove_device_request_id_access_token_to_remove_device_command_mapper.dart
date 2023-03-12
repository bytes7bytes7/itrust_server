import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RemoveDeviceRequestIDAccessTokenToRemoveDeviceCommandMapper
    extends ThreeSourcesMapper<RemoveDeviceRequest, UserID, String,
        RemoveDeviceCommand> {
  RemoveDeviceRequestIDAccessTokenToRemoveDeviceCommandMapper(super.input);

  @override
  RemoveDeviceCommand map() {
    return RemoveDeviceCommand(
      userID: _userID,
      sessionID: _request.sessionID,
      password: _request.password,
      accessToken: _accessToken,
    );
  }

  RemoveDeviceRequest get _request => source1;

  UserID get _userID => source2;

  String get _accessToken => source3;
}
