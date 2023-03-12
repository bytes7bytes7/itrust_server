import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RemoveDeviceResultToRemoveDeviceResponseMapper
    extends OneSourceMapper<RemoveDeviceResult, RemoveDeviceResponse> {
  RemoveDeviceResultToRemoveDeviceResponseMapper(super.input);

  @override
  RemoveDeviceResponse map() {
    return RemoveDeviceResponse(
      thisSession: _result.thisSession,
      otherSessions: _result.otherSessions,
    );
  }

  RemoveDeviceResult get _result => source;
}
