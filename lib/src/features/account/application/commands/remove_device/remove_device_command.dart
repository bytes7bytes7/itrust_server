import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';

class RemoveDeviceCommand
    extends Request<Either<List<DetailedException>, RemoveDeviceResult>> {
  RemoveDeviceCommand({
    required this.userID,
    required this.sessionID,
    required this.password,
  }) : super(RemoveDeviceCommand);

  final UserID userID;
  final int sessionID;
  final String password;
}
