import 'package:mapster/mapster.dart';

import '../../application/common/chats_result.dart';
import '../../presentation/contracts/chats_response/chats_response.dart';

class ChatsResultToChatsResponseMapper
    extends OneSourceMapper<ChatsResult, ChatsResponse> {
  ChatsResultToChatsResponseMapper(super.input);

  @override
  ChatsResponse map() {
    return ChatsResponse(
      chats: _result.chats,
    );
  }

  ChatsResult get _result => source;
}
