import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/common.dart';
import '../../common/common.dart';

class GetUserByIDQuery
    extends Request<Either<List<DetailedException>, GetUserByIDResult>> {
  GetUserByIDQuery({
    required this.userID,
  }) : super(GetUserByIDQuery);

  final UserID userID;
}
