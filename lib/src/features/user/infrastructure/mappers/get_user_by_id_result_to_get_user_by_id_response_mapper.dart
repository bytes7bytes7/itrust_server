import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByIDResultToGetUserByIDResponseMapper
    extends OneSourceMapper<GetUserByIDResult, GetUserByIDResponse> {
  GetUserByIDResultToGetUserByIDResponseMapper(super.input);

  @override
  GetUserByIDResponse map() {
    return GetUserByIDResponse(
      user: _result.user,
    );
  }

  GetUserByIDResult get _result => source;
}
