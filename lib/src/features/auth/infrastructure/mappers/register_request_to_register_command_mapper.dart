import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RegisterRequestToRegisterCommandMapper
    extends OneSourceMapper<RegisterRequest, RegisterCommand> {
  RegisterRequestToRegisterCommandMapper(super.input);

  @override
  RegisterCommand map() {
    return RegisterCommand(
      firstName: _request.firstName,
      lastName: _request.lastName,
      email: _request.email,
      password: _request.password,
      deviceInfo: _request.deviceInfo,
    );
  }

  RegisterRequest get _request => source;
}
