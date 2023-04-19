import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/friend_bids_amount_response/friend_bids_amount_response.dart';

class FriendBidsAmountResultToFriendBidsAmountResponseMapper
    extends OneSourceMapper<FriendBidsAmountResult, FriendBidsAmountResponse> {
  FriendBidsAmountResultToFriendBidsAmountResponseMapper(super.input);

  @override
  FriendBidsAmountResponse map() {
    return FriendBidsAmountResponse(
      inboxAmount: _result.inboxAmount,
      outboxAmount: _result.outboxAmount,
    );
  }

  FriendBidsAmountResult get _result => source;
}
