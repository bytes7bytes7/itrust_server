import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/listen_chats/listen_chats.dart';
import '../../presentation/contracts/contracts.dart';

class ListenChatsRequestToListenChatsQueryMapper
    extends TwoSourcesMapper<ListenChatsRequest, UserID, ListenChatsQuery> {
  ListenChatsRequestToListenChatsQueryMapper(super.input);

  @override
  ListenChatsQuery map() {
    return ListenChatsQuery(
      userID: _userID,
    );
  }

  UserID get _userID => source2;
}
