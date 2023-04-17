import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_user_info/get_user_info.dart';
import '../../presentation/contracts/contracts.dart';

class UserActionRequestToGetUserInfoQueryMapper
    extends TwoSourcesMapper<UserActionRequest, UserID, GetUserInfoQuery> {
  UserActionRequestToGetUserInfoQueryMapper(super.input);

  @override
  GetUserInfoQuery map() {
    return GetUserInfoQuery(
      userID: _userID,
      aboutUserID: UserID.fromString(_request.userID),
    );
  }

  UserActionRequest get _request => source1;

  UserID get _userID => source2;
}
