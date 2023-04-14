import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class SendFriendBidCommand
    extends Request<Either<List<DetailedException>, UserInfoResult>> {
  SendFriendBidCommand({
    required this.userID,
    required this.sendToUserID,
  }) : super(SendFriendBidCommand);

  final UserID userID;
  final UserID sendToUserID;
}
