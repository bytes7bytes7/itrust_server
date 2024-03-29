import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class LogInRequestToLogInQueryMapper
    extends TwoSourcesMapper<LogInRequest, String, LogInQuery> {
  LogInRequestToLogInQueryMapper(super.input);

  @override
  LogInQuery map() {
    return LogInQuery(
      email: _request.email,
      password: _request.password,
      deviceInfo: _request.deviceInfo,
      ip: _ip,
    );
  }

  LogInRequest get _request => source1;

  String get _ip => source2;
}
