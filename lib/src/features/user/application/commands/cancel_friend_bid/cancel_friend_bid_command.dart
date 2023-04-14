import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class CancelFriendBidCommand
    extends Request<Either<List<DetailedException>, UserInfoResult>> {
  CancelFriendBidCommand({
    required this.userID,
    required this.cancelToUserID,
  }) : super(CancelFriendBidCommand);

  final UserID userID;
  final UserID cancelToUserID;
}
