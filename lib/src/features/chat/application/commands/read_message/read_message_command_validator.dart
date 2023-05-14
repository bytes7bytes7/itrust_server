import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'read_message_command.dart';

@singleton
class ReadMessageCommandValidator
    extends BehaviorValidator<ReadMessageCommand, MessageResult> {}
