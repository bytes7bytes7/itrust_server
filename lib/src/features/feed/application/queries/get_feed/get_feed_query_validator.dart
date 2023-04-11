import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_feed_query.dart';

@singleton
class GetFeedQueryValidator
    extends BehaviorValidator<GetFeedQuery, GetFeedResult> {}
