import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'send_friend_bid_command.dart';

@singleton
class SendFriendBidCommandValidator
    extends BehaviorValidator<SendFriendBidCommand, UserInfoResult> {}
