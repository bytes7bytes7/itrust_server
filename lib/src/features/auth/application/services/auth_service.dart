import '../auth_result.dart';

abstract class AuthService {
  AuthResult register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  AuthResult login({
    required String email,
    required String password,
  });
}
