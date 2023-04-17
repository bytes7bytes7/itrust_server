import 'package:mapster/mapster.dart';

import '../../../common/domain/value_objects/user_id/user_id.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/user_action_request/user_action_request.dart';

class UserActionRequestToSendFriendBidCommandMapper
    extends TwoSourcesMapper<UserActionRequest, UserID, SendFriendBidCommand> {
  UserActionRequestToSendFriendBidCommandMapper(super.input);

  @override
  SendFriendBidCommand map() {
    return SendFriendBidCommand(
      userID: _userID,
      sendToUserID: UserID.fromString(_request.userID),
    );
  }

  UserActionRequest get _request => source1;

  UserID get _userID => source2;
}
