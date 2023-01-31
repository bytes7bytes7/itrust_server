import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../contracts/contracts.dart';

class RegisterRequestToRegisterCommandMapper
    extends OneSourceMapper<RegisterRequest, RegisterCommand> {
  const RegisterRequestToRegisterCommandMapper();

  @override
  RegisterCommand map(RegisterRequest object) {
    return RegisterCommand(
      firstName: object.firstName,
      lastName: object.lastName,
      email: object.email,
      password: object.password,
    );
  }
}
