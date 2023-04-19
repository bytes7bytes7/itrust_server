import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_friend_bids_amount_query.dart';

@singleton
class GetFriendBidsAmountQueryValidator extends BehaviorValidator<
    GetFriendBidsAmountQuery, FriendBidsAmountResult> {}
