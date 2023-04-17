import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class RemoveFriendRequestToRemoveFriendCommandMapper
    extends TwoSourcesMapper<RemoveFriendRequest, UserID, RemoveFriendCommand> {
  RemoveFriendRequestToRemoveFriendCommandMapper(super.input);

  @override
  RemoveFriendCommand map() {
    return RemoveFriendCommand(
      userID: _userID,
      removeUserID: UserID.fromString(_request.removeUserID),
    );
  }

  RemoveFriendRequest get _request => source1;

  UserID get _userID => source2;
}
