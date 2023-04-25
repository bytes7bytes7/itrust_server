import 'package:mapster/mapster.dart';

import '../../application/common/chat_event_result.dart';
import '../../presentation/contracts/chat_event_response/chat_event_response.dart';

class OnlineChangedChatEventResultToOnlineChangedChatEventResponseMapper
    extends OneSourceMapper<OnlineChangedChatEventResult,
        OnlineChangedChatEventResponse> {
  OnlineChangedChatEventResultToOnlineChangedChatEventResponseMapper(
    super.input,
  );

  @override
  OnlineChangedChatEventResponse map() {
    return OnlineChangedChatEventResponse(
      chatID: _result.chatID,
      isOnline: _result.isOnline,
    );
  }

  OnlineChangedChatEventResult get _result => source;
}
