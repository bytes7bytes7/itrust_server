import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_subscriptions/get_subscriptions.dart';
import '../../presentation/contracts/get_for_user_request/get_for_user_request.dart';

class GetForUserRequestToGetSubscriptionsQueryMapper
    extends TwoSourcesMapper<GetForUserRequest, UserID, GetSubscriptionsQuery> {
  GetForUserRequestToGetSubscriptionsQueryMapper(super.input);

  @override
  GetSubscriptionsQuery map() {
    final lastUserID = _request.lastUserID;

    return GetSubscriptionsQuery(
      userID: _userID,
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetForUserRequest get _request => source1;

  UserID get _userID => source2;
}
