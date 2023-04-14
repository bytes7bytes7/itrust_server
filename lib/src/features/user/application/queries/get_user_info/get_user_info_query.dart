import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetUserInfoQuery
    extends Request<Either<List<DetailedException>, UserInfoResult>> {
  GetUserInfoQuery({
    required this.userID,
    required this.aboutUserID,
  }) : super(GetUserInfoQuery);

  final UserID userID;
  final UserID aboutUserID;
}
