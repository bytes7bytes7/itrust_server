import 'package:injectable/injectable.dart';

import '../../../../common/application/application.dart';
import '../../common/common.dart';
import 'get_user_by_nick_query.dart';

@singleton
class GetUserByNickQueryValidator
    extends BehaviorValidator<GetUserByNickResult, GetUserByNickQuery> {}
