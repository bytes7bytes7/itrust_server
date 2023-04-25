import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_chats_query.dart';

@singleton
class GetChatsQueryValidator
    extends BehaviorValidator<GetChatsQuery, ChatsResult> {}
