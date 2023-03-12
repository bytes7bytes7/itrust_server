import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RemoveDeviceResultToRemoveDeviceResponseMapper
    extends OneSourceMapper<RemoveDeviceResult, RemoveDeviceResponse> {
  RemoveDeviceResultToRemoveDeviceResponseMapper(super.input);

  @override
  RemoveDeviceResponse map() {
    return RemoveDeviceResponse(
      info: _result.info,
    );
  }

  RemoveDeviceResult get _result => source;
}
