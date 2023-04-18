import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_subscriptions_query.dart';

@singleton
class GetSubscriptionsQueryValidator
    extends BehaviorValidator<GetSubscriptionsQuery, EndUsersResult> {}
