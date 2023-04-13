import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_rules_query.dart';

@singleton
class GetRulesQueryValidator
    extends BehaviorValidator<GetRulesQuery, RulesResult> {}
