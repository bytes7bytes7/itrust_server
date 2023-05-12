import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_message/get_message.dart';
import '../../presentation/contracts/contracts.dart';

class GetMessageRequestToGetMessageQueryMapper
    extends TwoSourcesMapper<GetMessageRequest, UserID, GetMessageQuery> {
  GetMessageRequestToGetMessageQueryMapper(super.input);

  @override
  GetMessageQuery map() {
    return GetMessageQuery(
      userID: _userID,
      chatID: ChatID.fromString(_request.chatID),
      messageID: MessageID.fromString(_request.messageID),
    );
  }

  GetMessageRequest get _request => source1;

  UserID get _userID => source2;
}
