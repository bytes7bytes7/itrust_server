import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../../../common/application/common/posts_result.dart';
import 'get_feed_query.dart';

@singleton
class GetFeedQueryValidator
    extends BehaviorValidator<GetFeedQuery, PostsResult> {}
