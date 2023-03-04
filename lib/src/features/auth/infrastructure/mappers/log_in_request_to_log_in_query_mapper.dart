import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class LogInRequestToLogInQueryMapper
    extends OneSourceMapper<LogInRequest, LogInQuery> {
  LogInRequestToLogInQueryMapper(super.input);

  @override
  LogInQuery map() {
    return LogInQuery(
      email: _request.email,
      password: _request.password,
      deviceInfo: _request.deviceInfo,
    );
  }

  LogInRequest get _request => source;
}
