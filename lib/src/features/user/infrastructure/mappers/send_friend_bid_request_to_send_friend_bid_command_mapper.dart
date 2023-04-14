import 'package:mapster/mapster.dart';

import '../../../common/domain/value_objects/user_id/user_id.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/send_friend_bid_request/send_friend_bid_request.dart';

class SendFriendBidRequestToSendFriendBidCommandMapper extends TwoSourcesMapper<
    SendFriendBidRequest, UserID, SendFriendBidCommand> {
  SendFriendBidRequestToSendFriendBidCommandMapper(super.input);

  @override
  SendFriendBidCommand map() {
    return SendFriendBidCommand(
      userID: _userID,
      sendToUserID: UserID.fromString(_request.sendToUserID),
    );
  }

  SendFriendBidRequest get _request => source1;

  UserID get _userID => source2;
}
