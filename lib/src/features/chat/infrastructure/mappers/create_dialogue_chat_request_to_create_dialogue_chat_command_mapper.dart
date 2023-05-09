import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class CreateDialogueChatRequestToCreateDialogueChatCommandMapper
    extends TwoSourcesMapper<CreateDialogueChatRequest, UserID,
        CreateDialogueChatCommand> {
  CreateDialogueChatRequestToCreateDialogueChatCommandMapper(super.input);

  @override
  CreateDialogueChatCommand map() {
    return CreateDialogueChatCommand(
      userID: _userID,
      partnerID: UserID.fromString(_request.partnerID),
    );
  }

  CreateDialogueChatRequest get _request => source1;

  UserID get _userID => source2;
}
