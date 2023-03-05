import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByNickResultToGetUserByNickResponseMapper
    extends OneSourceMapper<GetUserByNickResult, GetUserByNickResponse> {
  GetUserByNickResultToGetUserByNickResponseMapper(super.input);

  @override
  GetUserByNickResponse map() {
    return GetUserByNickResponse(
      user: _result.user,
    );
  }

  GetUserByNickResult get _result => source;
}
