import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_post_comment_query.dart';

@singleton
class GetPostCommentQueryValidator
    extends BehaviorValidator<GetPostCommentQuery, PostCommentResult> {}
