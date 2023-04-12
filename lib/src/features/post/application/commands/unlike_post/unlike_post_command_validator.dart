import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'unlike_post_command.dart';

@singleton
class UnlikePostCommandValidator
    extends BehaviorValidator<UnlikePostCommand, PostResult> {}
