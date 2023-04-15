import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../../../common/application/common/posts_result.dart';
import 'get_user_posts_query.dart';

@singleton
class GetUserPostsQueryValidator
    extends BehaviorValidator<GetUserPostsQuery, PostsResult> {}
