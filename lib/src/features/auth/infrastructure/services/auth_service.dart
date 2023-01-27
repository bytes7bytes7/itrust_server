import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../application/application.dart';
import '../../application/auth_result.dart';

@test
@Singleton(as: AuthService)
class TestAuthService implements AuthService {
  @override
  AuthResult register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) {
    return AuthResult(
      id: Uuid().v4(),
      firstName: firstName,
      lastName: lastName,
      email: email,
      token: 'token',
    );
  }

  @override
  AuthResult login({required String email, required String password}) {
    return AuthResult(
      id: Uuid().v4(),
      firstName: 'firstName',
      lastName: 'lastName',
      email: email,
      token: 'token',
    );
  }
}
