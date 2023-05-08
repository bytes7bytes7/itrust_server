import 'package:mapster/mapster.dart';

import '../../application/common/chat_event_result.dart';
import '../../presentation/contracts/chat_event_response/chat_event_response.dart';

class ChatEventResultToChatEventResponseMapper
    extends OneSourceMapper<ChatEventResult, ChatEventResponse> {
  ChatEventResultToChatEventResponseMapper(super.input);

  @override
  ChatEventResponse map() {
    return ChatEventResponse(
      created: _result.created,
      deleted: _result.deleted,
      updated: _result.updated,
    );
  }

  ChatEventResult get _result => source;
}
