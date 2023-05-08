import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class MessageResultToMessageResponseMapper
    extends OneSourceMapper<MessageResult, MessageResponse> {
  MessageResultToMessageResponseMapper(super.input);

  @override
  MessageResponse map() {
    return MessageResponse(
      message: _result.message,
    );
  }

  MessageResult get _result => source;
}
