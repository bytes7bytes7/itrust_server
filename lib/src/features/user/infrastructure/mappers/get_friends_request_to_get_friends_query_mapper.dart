import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_friends/get_friends.dart';
import '../../presentation/contracts/contracts.dart';

class GetFriendsRequestToGetFriendsQueryMapper
    extends TwoSourcesMapper<GetFriendsRequest, UserID, GetFriendsQuery> {
  GetFriendsRequestToGetFriendsQueryMapper(super.input);

  @override
  GetFriendsQuery map() {
    final lastUserID = _request.lastUserID;

    return GetFriendsQuery(
      userID: _userID,
      friendsTo: UserID.fromString(_request.friendsTo),
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetFriendsRequest get _request => source1;

  UserID get _userID => source2;
}
