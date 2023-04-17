import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class RemoveFriendCommand
    extends Request<Either<List<DetailedException>, UserInfoResult>> {
  RemoveFriendCommand({
    required this.userID,
    required this.removeUserID,
  }) : super(RemoveFriendCommand);

  final UserID userID;
  final UserID removeUserID;
}
