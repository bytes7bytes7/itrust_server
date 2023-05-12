import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_message_query.dart';

@singleton
class GetMessageQueryValidator
    extends BehaviorValidator<GetMessageQuery, MessageResult> {}
