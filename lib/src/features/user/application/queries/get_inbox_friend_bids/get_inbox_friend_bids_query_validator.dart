import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_inbox_friend_bids_query.dart';

@singleton
class GetInboxFriendBidsQueryValidator
    extends BehaviorValidator<GetInboxFriendBidsQuery, EndUsersResult> {}
