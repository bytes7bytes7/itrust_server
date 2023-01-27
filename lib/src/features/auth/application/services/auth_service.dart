import '../auth_result.dart';

abstract class AuthService {
  Future<AuthResult> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  Future<AuthResult> login({
    required String email,
    required String password,
  });
}
