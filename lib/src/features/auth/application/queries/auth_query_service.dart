import 'package:fpdart/fpdart.dart';

import '../../../common/common.dart';
import '../auth_result.dart';

abstract class AuthQueryService {
  Future<Either<DetailedException, AuthResult>> login({
    required String email,
    required String password,
  });
}
