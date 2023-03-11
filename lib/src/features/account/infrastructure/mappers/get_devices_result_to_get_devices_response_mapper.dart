import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetDevicesResultToGetDevicesResponseMapper
    extends OneSourceMapper<GetDevicesResult, GetDevicesResponse> {
  GetDevicesResultToGetDevicesResponseMapper(super.input);

  @override
  GetDevicesResponse map() {
    return GetDevicesResponse(
      thisSession: _result.thisSession,
      otherSessions: _result.otherSessions,
    );
  }

  GetDevicesResult get _result => source;
}
