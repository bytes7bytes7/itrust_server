import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_post_query.dart';

@singleton
class GetPostQueryValidator
    extends BehaviorValidator<GetPostQuery, PostResult> {}
