import 'package:injectable/injectable.dart';

import '../../../../common/application/application.dart';
import '../../common/common.dart';
import 'get_user_by_id_query.dart';

@singleton
class GetUserByIDQueryValidator
    extends BehaviorValidator<GetUserByIDResult, GetUserByIDQuery> {}
