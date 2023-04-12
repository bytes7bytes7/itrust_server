import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'like_post_command.dart';

@singleton
class LikePostCommandValidator
    extends BehaviorValidator<LikePostCommand, PostResult> {}
