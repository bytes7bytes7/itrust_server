import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'unlike_post_comment_command.dart';

@singleton
class UnlikePostCommentCommandValidator
    extends BehaviorValidator<UnlikePostCommentCommand, PostCommentResult> {}
