import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'like_post_comment_command.dart';

@singleton
class LikePostCommentCommandValidator
    extends BehaviorValidator<LikePostCommentCommand, PostCommentResult> {}
