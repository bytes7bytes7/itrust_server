import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'create_dialogue_chat_command.dart';

@singleton
class CreateDialogueChatCommandValidator
    extends BehaviorValidator<CreateDialogueChatCommand, ChatResult> {}
