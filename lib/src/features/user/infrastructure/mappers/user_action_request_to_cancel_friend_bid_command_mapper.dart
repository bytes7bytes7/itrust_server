import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/cancel_friend_bid/cancel_friend_bid.dart';
import '../../presentation/contracts/user_action_request/user_action_request.dart';

class UserActionRequestToCancelFriendBidCommandMapper extends TwoSourcesMapper<
    UserActionRequest, UserID, CancelFriendBidCommand> {
  UserActionRequestToCancelFriendBidCommandMapper(super.input);

  @override
  CancelFriendBidCommand map() {
    return CancelFriendBidCommand(
      userID: _userID,
      cancelToUserID: UserID.fromString(_request.userID),
    );
  }

  UserActionRequest get _request => source1;

  UserID get _userID => source2;
}
