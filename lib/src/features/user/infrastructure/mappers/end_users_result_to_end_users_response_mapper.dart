import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/end_users_response/end_users_response.dart';

class EndUsersResultToEndUsersResponseMapper
    extends OneSourceMapper<EndUsersResult, EndUsersResponse> {
  EndUsersResultToEndUsersResponseMapper(super.input);

  @override
  EndUsersResponse map() {
    return EndUsersResponse(
      users: _result.users,
    );
  }

  EndUsersResult get _result => source;
}
