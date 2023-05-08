import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/listen_messages/listen_messages.dart';
import '../../presentation/contracts/contracts.dart';

class ListenMessagesRequestToListenMessageQueryMapper
    extends ThreeSourcesMapper<ListenMessagesRequest, UserID, Stream,
        ListenMessagesQuery> {
  ListenMessagesRequestToListenMessageQueryMapper(super.input);

  @override
  ListenMessagesQuery map() {
    return ListenMessagesQuery(
      userID: _userID,
      chatID: ChatID.fromString(_request.chatID),
      inputStream: _stream,
    );
  }

  ListenMessagesRequest get _request => source1;

  UserID get _userID => source2;

  Stream get _stream => source3;
}
