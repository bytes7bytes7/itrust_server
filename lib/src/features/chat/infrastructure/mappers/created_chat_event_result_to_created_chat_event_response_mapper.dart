import 'package:mapster/mapster.dart';

import '../../application/common/chat_event_result.dart';
import '../../presentation/contracts/chat_event_response/chat_event_response.dart';

class CreatedChatEventResultToCreatedChatEventResponseMapper
    extends OneSourceMapper<CreatedChatEventResult, CreatedChatEventResponse> {
  CreatedChatEventResultToCreatedChatEventResponseMapper(super.input);

  @override
  CreatedChatEventResponse map() {
    return CreatedChatEventResponse(
      chat: _result.chat,
    );
  }

  CreatedChatEventResult get _result => source;
}
