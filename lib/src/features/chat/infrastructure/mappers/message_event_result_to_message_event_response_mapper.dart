import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class MessageEventResultToMessageEventResponseMapper
    extends OneSourceMapper<MessageEventResult, MessageEventResponse> {
  MessageEventResultToMessageEventResponseMapper(super.input);

  @override
  MessageEventResponse map() {
    return MessageEventResponse(
      created: _result.created,
      deleted: _result.deleted,
      updated: _result.updated,
    );
  }

  MessageEventResult get _result => source;
}
