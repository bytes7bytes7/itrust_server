import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class GetRulesQuery
    extends Request<Either<List<DetailedException>, RulesResult>> {
  GetRulesQuery() : super(GetRulesQuery);
}
