import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserResultToGetUserResponseMapper
    extends OneSourceMapper<GetUserResult, GetUserResponse> {
  GetUserResultToGetUserResponseMapper(super.input);

  @override
  GetUserResponse map() {
    return GetUserResponse(
      user: _result.user,
    );
  }

  GetUserResult get _result => source;
}
