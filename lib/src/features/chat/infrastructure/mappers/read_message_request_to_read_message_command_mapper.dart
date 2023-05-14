import 'package:mapster/mapster.dart';

import '../../../common/domain/value_objects/user_id/user_id.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class ReadMessageRequestToReadMessageCommandMapper
    extends TwoSourcesMapper<ReadMessageRequest, UserID, ReadMessageCommand> {
  ReadMessageRequestToReadMessageCommandMapper(super.input);

  @override
  ReadMessageCommand map() {
    return ReadMessageCommand(
      userID: _userID,
      chatID: _request.chatID,
      messageID: _request.messageID,
    );
  }

  ReadMessageRequest get _request => source1;

  UserID get _userID => source2;
}
