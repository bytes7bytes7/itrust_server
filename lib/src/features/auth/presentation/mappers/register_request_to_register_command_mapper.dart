import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../contracts/contracts.dart';

@injectable
class RegisterRequestToRegisterCommandMapper
    extends OneSourceMapper<RegisterRequest, RegisterCommand> {
  RegisterRequestToRegisterCommandMapper(@factoryParam super.input);

  @override
  RegisterCommand map() {
    return RegisterCommand(
      firstName: source.firstName,
      lastName: source.lastName,
      email: source.email,
      password: source.password,
    );
  }
}
