import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/common.dart';
import '../../common/common.dart';

class LogOutCommand
    extends Request<Either<List<DetailedException>, LogOutResult>> {
  LogOutCommand({
    required this.endUser,
  }) : super(LogOutCommand);

  final EndUser endUser;
}
