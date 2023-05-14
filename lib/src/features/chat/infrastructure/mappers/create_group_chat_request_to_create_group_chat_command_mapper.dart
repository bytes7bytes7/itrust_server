import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class CreateGroupChatRequestToCreateGroupChatCommandMapper
    extends TwoSourcesMapper<CreateGroupChatRequest, UserID,
        CreateGroupChatCommand> {
  CreateGroupChatRequestToCreateGroupChatCommandMapper(super.input);

  @override
  CreateGroupChatCommand map() {
    return CreateGroupChatCommand(
      userID: _userID,
      title: _request.title,
      image: _request.image,
      guestIDs: _request.guestIDs,
    );
  }

  CreateGroupChatRequest get _request => source1;

  UserID get _userID => source2;
}
