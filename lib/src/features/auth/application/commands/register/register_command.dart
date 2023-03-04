import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class RegisterCommand
    extends Request<Either<List<DetailedException>, AuthResult>> {
  RegisterCommand({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.deviceInfo,
  }) : super(RegisterCommand);

  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String deviceInfo;
}
