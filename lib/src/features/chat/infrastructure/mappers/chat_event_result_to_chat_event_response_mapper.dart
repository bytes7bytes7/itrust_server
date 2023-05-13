import 'package:mapster/mapster.dart';

import '../../application/common/chat_event_result.dart';
import '../../presentation/contracts/chat_event_response/chat_event_response.dart';
import '../../presentation/contracts/chat_last_message/chat_last_message.dart';

class ChatEventResultToChatEventResponseMapper
    extends OneSourceMapper<ChatEventResult, ChatEventResponse> {
  ChatEventResultToChatEventResponseMapper(super.input);

  @override
  ChatEventResponse map() {
    return ChatEventResponse(
      created: _result.created,
      deleted: _result.deleted,
      updated: _result.updated,
      lastMessage: _result.lastMessageID.entries
          .map(
            (entry) => ChatLastMessage(
              chatID: entry.key,
              messageID: entry.value,
            ),
          )
          .toList(),
    );
  }

  ChatEventResult get _result => source;
}
