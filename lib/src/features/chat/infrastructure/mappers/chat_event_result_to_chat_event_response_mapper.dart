import 'package:mapster/mapster.dart';

import '../../application/common/chat_event_result.dart';
import '../../presentation/contracts/chat_event_response/chat_event_response.dart';

class ChatEventResultToChatEventResponseMapper
    extends OneSourceMapper<ChatEventResult, ChatEventResponse> {
  ChatEventResultToChatEventResponseMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  ChatEventResponse map() {
    final result = _result;

    if (result is CreatedChatEventResult) {
      return _mapster.map1(result, To<CreatedChatEventResponse>());
    }

    if (result is DeletedChatEventResult) {
      return _mapster.map1(result, To<DeletedChatEventResponse>());
    }

    if (result is UpdatedChatEventResult) {
      return _mapster.map1(result, To<UpdatedChatEventResponse>());
    }

    if (result is OnlineChangedChatEventResult) {
      return _mapster.map1(result, To<OnlineChangedChatEventResponse>());
    }

    throw Exception('Unknown type of $ChatEventResult');
  }

  ChatEventResult get _result => source;
}
