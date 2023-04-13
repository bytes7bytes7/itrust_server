import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RegisterRequestToRegisterCommandMapper
    extends TwoSourcesMapper<RegisterRequest, String, RegisterCommand> {
  RegisterRequestToRegisterCommandMapper(super.input);

  @override
  RegisterCommand map() {
    return RegisterCommand(
      firstName: _request.firstName,
      lastName: _request.lastName,
      email: _request.email,
      password: _request.password,
      agreeWithRules: _request.agreeWithRules,
      deviceInfo: _request.deviceInfo,
      ip: _ip,
    );
  }

  RegisterRequest get _request => source1;

  String get _ip => source2;
}
