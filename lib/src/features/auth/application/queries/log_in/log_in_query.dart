import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class LogInQuery extends Request<Either<List<DetailedException>, AuthResult>> {
  LogInQuery({
    required this.email,
    required this.password,
    required this.deviceInfo,
  }) : super(LogInQuery);

  final String email;
  final String password;
  final String deviceInfo;
}
