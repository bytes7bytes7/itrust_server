import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'create_group_chat_command.dart';

@singleton
class CreateGroupChatCommandValidator
    extends BehaviorValidator<CreateGroupChatCommand, ChatResult> {
  CreateGroupChatCommandValidator() {
    ruleFor((e) => e.title, key: 'title').notEmpty();
  }
}
