import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class RespondFriendBidRequestToRespondFriendBidCommandMapper
    extends TwoSourcesMapper<RespondFriendBidRequest, UserID,
        RespondFriendBidCommand> {
  RespondFriendBidRequestToRespondFriendBidCommandMapper(super.input);

  @override
  RespondFriendBidCommand map() {
    return RespondFriendBidCommand(
      userID: _userID,
      respondToUserID: UserID.fromString(_request.respondToUserID),
      accept: _request.accept,
    );
  }

  RespondFriendBidRequest get _request => source1;

  UserID get _userID => source2;
}
