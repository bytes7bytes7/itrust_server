import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'cancel_friend_bid_command.dart';

@singleton
class CancelFriendBidCommandValidator
    extends BehaviorValidator<CancelFriendBidCommand, UserInfoResult> {}
