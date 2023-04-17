import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class UserActionRequestToRemoveSubscriberCommandMapper extends TwoSourcesMapper<
    UserActionRequest, UserID, RemoveSubscriberCommand> {
  UserActionRequestToRemoveSubscriberCommandMapper(super.input);

  @override
  RemoveSubscriberCommand map() {
    return RemoveSubscriberCommand(
      userID: _userID,
      removeUserID: UserID.fromString(_request.userID),
    );
  }

  UserActionRequest get _request => source1;

  UserID get _userID => source2;
}
