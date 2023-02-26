import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class VerifyTokenRequestUserToVerifyTokenQueryMapper
    extends OneSourceMapper<VerifyTokenRequest, VerifyTokenQuery> {
  VerifyTokenRequestUserToVerifyTokenQueryMapper(super.input);

  @override
  VerifyTokenQuery map() {
    return VerifyTokenQuery(
      accessToken: _request.accessToken,
    );
  }

  VerifyTokenRequest get _request => source;
}
