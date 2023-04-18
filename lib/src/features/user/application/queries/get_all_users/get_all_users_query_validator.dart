import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_all_users_query.dart';

@singleton
class GetAllUsersQueryValidator
    extends BehaviorValidator<GetAllUsersQuery, UsersResult> {}
