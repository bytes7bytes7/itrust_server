import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'listen_chats_query.dart';

@singleton
class ListenChatsQueryValidator
    extends BehaviorValidator<ListenChatsQuery, ChatEventResult> {}
