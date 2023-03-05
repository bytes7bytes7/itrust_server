import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByIDResultToGetUserResponseByIDMapper
    extends OneSourceMapper<GetUserByIDResult, GetUserResponseByID> {
  GetUserByIDResultToGetUserResponseByIDMapper(super.input);

  @override
  GetUserResponseByID map() {
    return GetUserResponseByID(
      user: _result.user,
    );
  }

  GetUserByIDResult get _result => source;
}
