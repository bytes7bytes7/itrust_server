import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/common/common.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';

class GetAllUsersQuery
    extends Request<Either<List<DetailedException>, UsersResult>> {
  GetAllUsersQuery({
    required this.userID,
    required this.lastUserID,
  }) : super(GetAllUsersQuery);

  final UserID userID;
  final UserID? lastUserID;
}
