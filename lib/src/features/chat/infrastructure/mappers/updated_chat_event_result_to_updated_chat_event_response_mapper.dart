import 'package:mapster/mapster.dart';

import '../../application/common/chat_event_result.dart';
import '../../presentation/contracts/chat_event_response/chat_event_response.dart';

class UpdatedChatEventResultToUpdatedChatEventResponseMapper
    extends OneSourceMapper<UpdatedChatEventResult, UpdatedChatEventResponse> {
  UpdatedChatEventResultToUpdatedChatEventResponseMapper(super.input);

  @override
  UpdatedChatEventResponse map() {
    return UpdatedChatEventResponse(
      chat: _result.chat,
    );
  }

  UpdatedChatEventResult get _result => source;
}
