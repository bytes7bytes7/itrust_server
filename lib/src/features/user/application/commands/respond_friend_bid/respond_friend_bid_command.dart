import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class RespondFriendBidCommand
    extends Request<Either<List<DetailedException>, UserInfoResult>> {
  RespondFriendBidCommand({
    required this.userID,
    required this.respondToUserID,
    required this.accept,
  }) : super(RespondFriendBidCommand);

  final UserID userID;
  final UserID respondToUserID;
  final bool accept;
}
