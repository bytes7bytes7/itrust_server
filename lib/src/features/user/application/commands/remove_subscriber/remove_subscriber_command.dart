import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class RemoveSubscriberCommand
    extends Request<Either<List<DetailedException>, UserInfoResult>> {
  RemoveSubscriberCommand({
    required this.userID,
    required this.removeUserID,
  }) : super(RemoveSubscriberCommand);

  final UserID userID;
  final UserID removeUserID;
}
