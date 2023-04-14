import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/users_response/users_response.dart';

class UsersResultToUsersResponseMapper
    extends OneSourceMapper<UsersResult, UsersResponse> {
  UsersResultToUsersResponseMapper(super.input);

  @override
  UsersResponse map() {
    return UsersResponse(
      users: _result.users,
    );
  }

  UsersResult get _result => source;
}
