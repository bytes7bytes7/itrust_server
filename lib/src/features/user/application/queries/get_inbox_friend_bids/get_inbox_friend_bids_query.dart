import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetInboxFriendBidsQuery
    extends Request<Either<List<DetailedException>, EndUsersResult>> {
  GetInboxFriendBidsQuery({
    required this.userID,
    required this.lastUserID,
  }) : super(GetInboxFriendBidsQuery);

  final UserID userID;
  final UserID? lastUserID;
}
