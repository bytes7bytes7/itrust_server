import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_messages/get_messages.dart';
import '../../presentation/contracts/contracts.dart';

class GetMessagesRequestToGetMessagesQueryMapper
    extends TwoSourcesMapper<GetMessagesRequest, UserID, GetMessagesQuery> {
  GetMessagesRequestToGetMessagesQueryMapper(super.input);

  @override
  GetMessagesQuery map() {
    final lastMessageID = _request.lastMessageID;

    return GetMessagesQuery(
      userID: _userID,
      chatID: ChatID.fromString(_request.chatID),
      lastMessageID:
          lastMessageID != null ? MessageID.fromString(lastMessageID) : null,
    );
  }

  GetMessagesRequest get _request => source1;

  UserID get _userID => source2;
}
