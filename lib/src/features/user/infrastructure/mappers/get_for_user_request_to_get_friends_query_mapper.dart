import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_friends/get_friends.dart';
import '../../presentation/contracts/contracts.dart';

class GetForUserRequestToGetFriendsQueryMapper
    extends TwoSourcesMapper<GetForUserRequest, UserID, GetFriendsQuery> {
  GetForUserRequestToGetFriendsQueryMapper(super.input);

  @override
  GetFriendsQuery map() {
    final lastUserID = _request.lastUserID;

    return GetFriendsQuery(
      userID: _userID,
      friendsTo: UserID.fromString(_request.userID),
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetForUserRequest get _request => source1;

  UserID get _userID => source2;
}
