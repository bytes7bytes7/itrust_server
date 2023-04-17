import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/user_action_request/user_action_request.dart';

class UserActionRequestToRemoveFriendCommandMapper
    extends TwoSourcesMapper<UserActionRequest, UserID, RemoveFriendCommand> {
  UserActionRequestToRemoveFriendCommandMapper(super.input);

  @override
  RemoveFriendCommand map() {
    return RemoveFriendCommand(
      userID: _userID,
      removeUserID: UserID.fromString(_request.userID),
    );
  }

  UserActionRequest get _request => source1;

  UserID get _userID => source2;
}
