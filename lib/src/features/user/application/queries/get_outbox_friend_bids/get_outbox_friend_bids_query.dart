import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetOutboxFriendBidsQuery
    extends Request<Either<List<DetailedException>, EndUsersResult>> {
  GetOutboxFriendBidsQuery({
    required this.userID,
    required this.lastUserID,
  }) : super(GetOutboxFriendBidsQuery);

  final UserID userID;
  final UserID? lastUserID;
}
