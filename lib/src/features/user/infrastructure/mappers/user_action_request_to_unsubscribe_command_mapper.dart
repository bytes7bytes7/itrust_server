import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/user_action_request/user_action_request.dart';

class UserActionRequestToUnsubscribeCommandMapper
    extends TwoSourcesMapper<UserActionRequest, UserID, UnsubscribeCommand> {
  UserActionRequestToUnsubscribeCommandMapper(super.input);

  @override
  UnsubscribeCommand map() {
    return UnsubscribeCommand(
      userID: _userID,
      unsubscribeUserID: UserID.fromString(_request.userID),
    );
  }

  UserActionRequest get _request => source1;

  UserID get _userID => source2;
}
