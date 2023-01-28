import 'package:fpdart/fpdart.dart';

import '../../../common/common.dart';
import '../auth_result.dart';

abstract class AuthService {
  Future<Either<DetailedException, AuthResult>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  Future<Either<DetailedException, AuthResult>> login({
    required String email,
    required String password,
  });
}
