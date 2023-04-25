import 'package:mapster/mapster.dart';

import '../../application/common/chat_event_result.dart';
import '../../presentation/contracts/chat_event_response/chat_event_response.dart';

class DeletedChatEventResultToDeletedChatEventResponseMapper
    extends OneSourceMapper<DeletedChatEventResult, DeletedChatEventResponse> {
  DeletedChatEventResultToDeletedChatEventResponseMapper(super.input);

  @override
  DeletedChatEventResponse map() {
    return DeletedChatEventResponse(
      chatID: _result.chatID,
    );
  }

  DeletedChatEventResult get _result => source;
}
