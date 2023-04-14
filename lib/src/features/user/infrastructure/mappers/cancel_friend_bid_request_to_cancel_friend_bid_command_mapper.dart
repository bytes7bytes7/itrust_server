import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/cancel_friend_bid/cancel_friend_bid.dart';
import '../../presentation/contracts/cancel_friend_bid_request/cancel_friend_bid_request.dart';

class CancelFriendBidRequestToCancelFriendBidCommandMapper
    extends TwoSourcesMapper<CancelFriendBidRequest, UserID,
        CancelFriendBidCommand> {
  CancelFriendBidRequestToCancelFriendBidCommandMapper(super.input);

  @override
  CancelFriendBidCommand map() {
    return CancelFriendBidCommand(
      userID: _userID,
      cancelToUserID: UserID.fromString(_request.cancelToUserID),
    );
  }

  CancelFriendBidRequest get _request => source1;

  UserID get _userID => source2;
}
