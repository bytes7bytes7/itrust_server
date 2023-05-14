import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_chat_partners/get_chat_partners.dart';
import '../../presentation/contracts/contracts.dart';

class GetChatPartnersRequestToGetChatPartnersQueryMapper
    extends TwoSourcesMapper<GetChatPartnersRequest, UserID,
        GetChatPartnersQuery> {
  GetChatPartnersRequestToGetChatPartnersQueryMapper(super.input);

  @override
  GetChatPartnersQuery map() {
    final lastUserID = _request.lastUserID;

    return GetChatPartnersQuery(
      userID: _userID,
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetChatPartnersRequest get _request => source1;

  UserID get _userID => source2;
}
