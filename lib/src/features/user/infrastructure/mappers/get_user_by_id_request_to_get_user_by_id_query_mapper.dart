import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByIDRequestToGetUserByIDQueryMapper
    extends TwoSourcesMapper<GetUserByIDRequest, UserID, GetUserByIDQuery> {
  GetUserByIDRequestToGetUserByIDQueryMapper(super.input);

  @override
  GetUserByIDQuery map() {
    return GetUserByIDQuery(
      userID: _userID,
      requestedUserID: UserID.fromString(_request.userID),
    );
  }

  GetUserByIDRequest get _request => source1;

  UserID get _userID => source2;
}
