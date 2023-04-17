import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'remove_subscriber_command.dart';

@singleton
class RemoveSubscriberCommandValidator
    extends BehaviorValidator<RemoveSubscriberCommand, UserInfoResult> {}
