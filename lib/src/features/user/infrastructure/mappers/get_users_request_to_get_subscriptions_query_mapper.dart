import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_subscriptions/get_subscriptions.dart';
import '../../presentation/contracts/get_users_request/get_users_request.dart';

class GetUsersRequestToGetSubscriptionsQueryMapper
    extends TwoSourcesMapper<GetUsersRequest, UserID, GetSubscriptionsQuery> {
  GetUsersRequestToGetSubscriptionsQueryMapper(super.input);

  @override
  GetSubscriptionsQuery map() {
    final lastUserID = _request.lastUserID;

    return GetSubscriptionsQuery(
      userID: _userID,
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetUsersRequest get _request => source1;

  UserID get _userID => source2;
}
