import 'package:injectable/injectable.dart';
import '../../../../common/application/behaviors/behavior_validator.dart';

import '../../common/common.dart';
import 'unsubscribe_command.dart';

@singleton
class UnsubscribeCommandValidator
    extends BehaviorValidator<UnsubscribeCommand, UserInfoResult> {}
