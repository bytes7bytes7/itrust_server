import 'package:fpdart/fpdart.dart';

import '../../../common/common.dart';
import '../auth_result.dart';

abstract class AuthCommandService {
  Future<Either<DetailedException, AuthResult>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });
}
