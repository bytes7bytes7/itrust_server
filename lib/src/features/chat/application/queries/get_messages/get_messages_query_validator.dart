import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_messages_query.dart';

@singleton
class GetMessagesQueryValidator
    extends BehaviorValidator<GetMessagesQuery, MessagesResult> {}
