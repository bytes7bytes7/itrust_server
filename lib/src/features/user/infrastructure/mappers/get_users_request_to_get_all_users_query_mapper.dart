import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_all_users/get_all_users.dart';
import '../../presentation/contracts/get_users_request/get_users_request.dart';

class GetUsersRequestToGetAllUsersQueryMapper
    extends TwoSourcesMapper<GetUsersRequest, UserID, GetAllUsersQuery> {
  GetUsersRequestToGetAllUsersQueryMapper(super.input);

  @override
  GetAllUsersQuery map() {
    final lastUserID = _request.lastUserID;

    return GetAllUsersQuery(
      userID: _userID,
      lastUserID: lastUserID != null ? UserID.fromString(lastUserID) : null,
    );
  }

  GetUsersRequest get _request => source1;

  UserID get _userID => source2;
}
