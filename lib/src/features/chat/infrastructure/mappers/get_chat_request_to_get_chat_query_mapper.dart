import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_chat/get_chat.dart';
import '../../presentation/contracts/contracts.dart';

class GetChatRequestToGetChatQueryMapper
    extends TwoSourcesMapper<GetChatRequest, UserID, GetChatQuery> {
  GetChatRequestToGetChatQueryMapper(super.input);

  @override
  GetChatQuery map() {
    return GetChatQuery(
      userID: _userID,
      chatID: ChatID.fromString(_request.chatID),
    );
  }

  GetChatRequest get _request => source1;

  UserID get _userID => source2;
}
