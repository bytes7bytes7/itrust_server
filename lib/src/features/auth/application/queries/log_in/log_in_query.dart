import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';

class LogInQuery extends Request<Either<List<DetailedException>, AuthResult>> {
  LogInQuery({
    required this.email,
    required this.password,
  }) : super(LogInQuery);

  final String email;
  final String password;
}
