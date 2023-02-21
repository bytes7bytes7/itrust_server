import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../contracts/contracts.dart';

@injectable
class LoginRequestToLoginQueryMapper
    extends OneSourceMapper<LoginRequest, LoginQuery> {
  LoginRequestToLoginQueryMapper(@factoryParam super.input);

  @override
  LoginQuery map() {
    return LoginQuery(
      email: source.email,
      password: source.password,
    );
  }
}
