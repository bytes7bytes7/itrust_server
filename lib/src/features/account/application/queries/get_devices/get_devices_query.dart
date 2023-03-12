import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/common.dart';
import '../../common/common.dart';

class GetDevicesQuery
    extends Request<Either<List<DetailedException>, GetDevicesResult>> {
  GetDevicesQuery({
    required this.userID,
    required this.accessToken,
  }) : super(GetDevicesQuery);

  final UserID userID;
  final String accessToken;
}
