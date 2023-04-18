import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_people_amount_query.dart';

@singleton
class GetPeopleAmountQueryValidator
    extends BehaviorValidator<GetPeopleAmountQuery, PeopleAmountResult> {}
