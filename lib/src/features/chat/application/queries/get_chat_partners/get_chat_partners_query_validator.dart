import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../../../common/application/common/common.dart';
import 'get_chat_partners_query.dart';

@singleton
class GetChatPartnersQueryValidator
    extends BehaviorValidator<GetChatPartnersQuery, UsersResult> {}
