import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'remove_friend_command.dart';

@singleton
class RemoveFriendCommandValidator
    extends BehaviorValidator<RemoveFriendCommand, UserInfoResult> {}
