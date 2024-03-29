import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'create_monologue_chat_command.dart';

@singleton
class CreateMonologueChatCommandValidator
    extends BehaviorValidator<CreateMonologueChatCommand, ChatResult> {
  CreateMonologueChatCommandValidator() {
    ruleFor((e) => e.title, key: 'title').notEmpty();
  }
}
