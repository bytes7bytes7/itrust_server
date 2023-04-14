import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_friends_query.dart';

@singleton
class GetFriendsQueryValidator
    extends BehaviorValidator<GetFriendsQuery, UsersResult> {}
