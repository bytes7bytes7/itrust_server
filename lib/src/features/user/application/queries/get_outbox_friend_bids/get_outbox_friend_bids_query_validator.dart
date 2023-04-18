import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_outbox_friend_bids_query.dart';

@singleton
class GetOutboxFriendBidsQueryValidator
    extends BehaviorValidator<GetOutboxFriendBidsQuery, EndUsersResult> {}
