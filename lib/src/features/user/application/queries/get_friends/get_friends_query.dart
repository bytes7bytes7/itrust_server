import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetFriendsQuery
    extends Request<Either<List<DetailedException>, EndUsersResult>> {
  GetFriendsQuery({
    required this.userID,
    required this.friendsTo,
    required this.lastUserID,
  }) : super(GetFriendsQuery);

  final UserID userID;
  final UserID friendsTo;
  final UserID? lastUserID;
}
