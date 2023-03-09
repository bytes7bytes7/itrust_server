import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class ChangePersonalInfoResultToChangePersonalInfoResponseMapper
    extends OneSourceMapper<ChangePersonalInfoResult,
        ChangePersonalInfoResponse> {
  ChangePersonalInfoResultToChangePersonalInfoResponseMapper(super.input);

  @override
  ChangePersonalInfoResponse map() {
    return ChangePersonalInfoResponse(
      user: _result.user,
    );
  }

  ChangePersonalInfoResult get _result => source;
}
