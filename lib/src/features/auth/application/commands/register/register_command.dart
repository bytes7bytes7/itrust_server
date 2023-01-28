import 'package:fpdart/fpdart.dart';
import 'package:mediatr/mediatr.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';

class RegisterCommand extends IRequest<Either<DetailedException, AuthResult>> {
  const RegisterCommand({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String password;
}
