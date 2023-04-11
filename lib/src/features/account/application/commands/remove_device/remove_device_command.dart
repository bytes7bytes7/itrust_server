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
    required this.accessToken,
  }) : super(RemoveDeviceCommand);

  final UserID userID;
  final String sessionID;
  final String password;
  final String accessToken;
}
