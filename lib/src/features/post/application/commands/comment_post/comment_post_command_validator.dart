import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'comment_post_command.dart';

@singleton
class CommentPostCommandValidator
    extends BehaviorValidator<CommentPostCommand, PostCommentResult> {
  CommentPostCommandValidator() {
    ruleFor((e) => e.text.trim(), key: 'text').notEmpty();
  }
}
