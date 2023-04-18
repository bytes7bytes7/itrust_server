import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_outbox_friend_bids/get_outbox_friend_bids.dart';
import '../../presentation/contracts/get_users_request/get_users_request.dart';

class GetUsersRequestToGetOutboxFriendBidsQueryMapper extends TwoSourcesMapper<
    GetUsersRequest, UserID, GetOutboxFriendBidsQuery> {
  GetUsersRequestToGetOutboxFriendBidsQueryMapper(super.input);

  @override
  GetOutboxFriendBidsQuery map() {
    final lastUserID = _request.lastUserID;

    return GetOutboxFriendBidsQuery(
      userID: _userID,
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetUsersRequest get _request => source1;

  UserID get _userID => source2;
}
