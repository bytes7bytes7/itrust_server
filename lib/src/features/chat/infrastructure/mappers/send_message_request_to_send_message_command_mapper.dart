import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class SendMessageRequestToSendMessageCommandMapper
    extends TwoSourcesMapper<SendMessageRequest, UserID, SendMessageCommand> {
  SendMessageRequestToSendMessageCommandMapper(super.input);

  @override
  SendMessageCommand map() {
    return SendMessageCommand(
      userID: _userID,
      chatID: ChatID.fromString(_request.chatID),
      text: _request.text,
      media: _request.media,
      willBeBurntAfterSec: _request.willBeBurntAfterSec,
    );
  }

  SendMessageRequest get _request => source1;

  UserID get _userID => source2;
}
