import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_post_comments_query.dart';

@singleton
class GetPostCommentsQueryValidator
    extends BehaviorValidator<GetPostCommentsQuery, PostCommentsResult> {}
