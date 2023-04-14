import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_user_info_query.dart';

@singleton
class GetUserInfoQueryValidator
    extends BehaviorValidator<GetUserInfoQuery, UserInfoResult> {}
