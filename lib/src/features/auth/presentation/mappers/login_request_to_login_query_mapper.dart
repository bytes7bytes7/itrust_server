import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../contracts/contracts.dart';

class LoginRequestToLoginQueryMapper
    extends OneSourceMapper<LoginRequest, LoginQuery> {
  const LoginRequestToLoginQueryMapper();

  @override
  LoginQuery map(LoginRequest object) {
    return LoginQuery(
      email: object.email,
      password: object.password,
    );
  }
}
