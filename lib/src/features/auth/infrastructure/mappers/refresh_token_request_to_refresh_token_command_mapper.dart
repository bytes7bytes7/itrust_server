import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RefreshTokenRequestToRefreshTokenCommandMapper
    extends TwoSourcesMapper<RefreshTokenRequest, String, RefreshTokenCommand> {
  RefreshTokenRequestToRefreshTokenCommandMapper(super.input);

  @override
  RefreshTokenCommand map() {
    return RefreshTokenCommand(
      refreshToken: _request.refreshToken,
      deviceInfo: _request.deviceInfo,
      ip: _ip,
    );
  }

  RefreshTokenRequest get _request => source1;

  String get _ip => source2;
}
