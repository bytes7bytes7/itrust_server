import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class UserResultToUserResponse
    extends OneSourceMapper<UserResult, UserResponse> {
  UserResultToUserResponse(super.input);

  @override
  UserResponse map() {
    return UserResponse(
      user: _result.user,
    );
  }

  UserResult get _result => source;
}
