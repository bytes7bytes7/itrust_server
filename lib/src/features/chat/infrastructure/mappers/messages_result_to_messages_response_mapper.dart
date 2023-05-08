import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class MessagesResultToMessagesResponseMapper
    extends OneSourceMapper<MessagesResult, MessagesResponse> {
  MessagesResultToMessagesResponseMapper(super.input);

  @override
  MessagesResponse map() {
    return MessagesResponse(
      messages: _result.messages,
    );
  }

  MessagesResult get _result => source;
}
