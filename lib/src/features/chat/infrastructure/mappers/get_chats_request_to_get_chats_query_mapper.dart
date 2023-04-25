import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_chats/get_chats.dart';
import '../../presentation/contracts/contracts.dart';

class GetChatsRequestToGetChatsQueryMapper
    extends TwoSourcesMapper<GetChatsRequest, UserID, GetChatsQuery> {
  GetChatsRequestToGetChatsQueryMapper(super.input);

  @override
  GetChatsQuery map() {
    final lastChatID = _request.lastChatID;

    return GetChatsQuery(
      userID: _userID,
      lastChatID: lastChatID != null ? ChatID.fromString(lastChatID) : null,
    );
  }

  GetChatsRequest get _request => source1;

  UserID get _userID => source2;
}
