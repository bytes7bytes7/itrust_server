import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'send_message_command.dart';

@singleton
class SendMessageCommandValidator
    extends BehaviorValidator<SendMessageCommand, MessageResult> {
  SendMessageCommandValidator() {
    ruleFor(
      (e) => [
        if (e.text.isNotEmpty) e.text else null,
        if (e.media.isNotEmpty) e.media else null,
      ].where((e) => e != null).toList(),
      key: 'content',
    ).notEmpty();
  }
}
