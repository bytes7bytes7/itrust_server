import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class GetDevicesQuery
    extends Request<Either<List<DetailedException>, GetDevicesResult>> {
  GetDevicesQuery() : super(GetDevicesQuery);
}
