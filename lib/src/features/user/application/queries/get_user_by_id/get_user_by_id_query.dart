import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';

class GetUserByIDQuery
    extends Request<Either<List<DetailedException>, UserResult>> {
  GetUserByIDQuery({
    required this.userID,
    required this.requestedUserID,
  }) : super(GetUserByIDQuery);

  final UserID userID;
  final UserID requestedUserID;
}
