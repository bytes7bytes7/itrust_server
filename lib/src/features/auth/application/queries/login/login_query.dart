import 'package:fpdart/fpdart.dart';
import 'package:mediatr/mediatr.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';

class LoginQuery extends IQuery<Either<DetailedException, AuthResult>> {
  const LoginQuery({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}
