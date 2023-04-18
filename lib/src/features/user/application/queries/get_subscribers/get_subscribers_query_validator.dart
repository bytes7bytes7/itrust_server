import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_subscribers_query.dart';

@singleton
class GetSubscribersQueryValidator
    extends BehaviorValidator<GetSubscribersQuery, EndUsersResult> {}
