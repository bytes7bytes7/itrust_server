import 'package:mapster/mapster.dart';

import '../../application/common/chat_result.dart';
import '../../presentation/contracts/chat_response/chat_response.dart';

class ChatResultToChatResponseMapper
    extends OneSourceMapper<ChatResult, ChatResponse> {
  ChatResultToChatResponseMapper(super.input);

  @override
  ChatResponse map() {
    return ChatResponse(
      chat: _result.chat,
    );
  }

  ChatResult get _result => source;
}
