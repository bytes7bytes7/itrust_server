import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class VerifyTokenRequestToVerifyTokenQueryMapper
    extends TwoSourcesMapper<VerifyTokenRequest, String, VerifyTokenQuery> {
  VerifyTokenRequestToVerifyTokenQueryMapper(super.input);

  @override
  VerifyTokenQuery map() {
    return VerifyTokenQuery(
      accessToken: _accessToken,
      deviceInfo: _request.deviceInfo,
    );
  }

  VerifyTokenRequest get _request => source1;

  String get _accessToken => source2;
}
