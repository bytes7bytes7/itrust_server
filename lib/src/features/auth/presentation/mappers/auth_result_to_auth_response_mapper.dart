import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../contracts/contracts.dart';

@injectable
class AuthResultToAuthResponseMapper
    extends OneSourceMapper<AuthResult, AuthResponse> {
  AuthResultToAuthResponseMapper(@factoryParam super.input);

  @override
  AuthResponse map() {
    return AuthResponse(
      id: source.user.id,
      firstName: source.user.firstName,
      lastName: source.user.lastName,
      email: source.user.email,
      token: source.token,
    );
  }
}
