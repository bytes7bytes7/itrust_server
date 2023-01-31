import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../contracts/contracts.dart';

class AuthResultToAuthResponseMapper
    extends OneSourceMapper<AuthResult, AuthResponse> {
  const AuthResultToAuthResponseMapper();

  @override
  AuthResponse map(AuthResult object) {
    return AuthResponse(
      id: object.user.id,
      firstName: object.user.firstName,
      lastName: object.user.lastName,
      email: object.user.email,
      token: object.token,
    );
  }
}
