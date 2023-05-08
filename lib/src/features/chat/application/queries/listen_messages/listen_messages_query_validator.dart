import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'listen_messages_query.dart';

@singleton
class ListenMessagesQueryValidator
    extends BehaviorValidator<ListenMessagesQuery, MessageEventResult> {}
