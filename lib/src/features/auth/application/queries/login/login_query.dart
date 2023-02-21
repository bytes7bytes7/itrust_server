import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';

class LoginQuery extends Request<Either<DetailedException, AuthResult>> {
  LoginQuery({
    required this.email,
    required this.password,
  }) : super(LoginQuery);

  final String email;
  final String password;
}
