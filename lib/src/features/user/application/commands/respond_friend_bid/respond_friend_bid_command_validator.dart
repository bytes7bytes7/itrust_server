import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'respond_friend_bid_command.dart';

@singleton
class RespondFriendBidCommandValidator
    extends BehaviorValidator<RespondFriendBidCommand, UserInfoResult> {}
