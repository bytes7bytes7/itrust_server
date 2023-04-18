import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_inbox_friend_bids/get_inbox_friend_bids.dart';
import '../../presentation/contracts/get_users_request/get_users_request.dart';

class GetUsersRequestToGetInboxFriendBidsQueryMapper
    extends TwoSourcesMapper<GetUsersRequest, UserID, GetInboxFriendBidsQuery> {
  GetUsersRequestToGetInboxFriendBidsQueryMapper(super.input);

  @override
  GetInboxFriendBidsQuery map() {
    final lastUserID = _request.lastUserID;

    return GetInboxFriendBidsQuery(
      userID: _userID,
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetUsersRequest get _request => source1;

  UserID get _userID => source2;
}
