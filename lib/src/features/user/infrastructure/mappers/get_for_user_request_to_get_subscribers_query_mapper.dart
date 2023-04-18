import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_subscribers/get_subscribers.dart';
import '../../presentation/contracts/get_for_user_request/get_for_user_request.dart';

class GetForUserRequestToGetSubscribersQueryMapper
    extends TwoSourcesMapper<GetForUserRequest, UserID, GetSubscribersQuery> {
  GetForUserRequestToGetSubscribersQueryMapper(super.input);

  @override
  GetSubscribersQuery map() {
    final lastUserID = _request.lastUserID;

    return GetSubscribersQuery(
      userID: _userID,
      subscribersOfUserID: UserID.fromString(_request.userID),
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetForUserRequest get _request => source1;

  UserID get _userID => source2;
}
