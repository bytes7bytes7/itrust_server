import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_chat_query.dart';

@singleton
class GetChatQueryValidator
    extends BehaviorValidator<GetChatQuery, ChatResult> {}
