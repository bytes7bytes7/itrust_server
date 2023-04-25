import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class CreateMonologueChatRequestToCreateMonologueChatCommandMapper
    extends TwoSourcesMapper<CreateMonologueChatRequest, UserID,
        CreateMonologueChatCommand> {
  CreateMonologueChatRequestToCreateMonologueChatCommandMapper(super.input);

  @override
  CreateMonologueChatCommand map() {
    return CreateMonologueChatCommand(
      userID: _userID,
      title: _request.title,
      iconName: _request.iconName,
      image: _request.image,
    );
  }

  CreateMonologueChatRequest get _request => source1;

  UserID get _userID => source2;
}
