import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserRequestToGetUserQueryMapper
    extends OneSourceMapper<GetUserRequest, GetUserQuery> {
  GetUserRequestToGetUserQueryMapper(super.input);

  @override
  GetUserQuery map() {
    return GetUserQuery(
      userID: UserID(_request.userID),
    );
  }

  GetUserRequest get _request => source;
}
