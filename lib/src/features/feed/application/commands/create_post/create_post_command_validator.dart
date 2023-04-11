import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'create_post_command.dart';

@singleton
class CreatePostCommandValidator
    extends BehaviorValidator<CreatePostCommand, PostResult> {}
