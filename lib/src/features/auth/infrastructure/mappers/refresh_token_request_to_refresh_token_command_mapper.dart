import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class RefreshTokenRequestToRefreshTokenCommandMapper
    extends OneSourceMapper<RefreshTokenRequest, RefreshTokenCommand> {
  RefreshTokenRequestToRefreshTokenCommandMapper(super.input);

  @override
  RefreshTokenCommand map() {
    return RefreshTokenCommand(
      refreshToken: _request.refreshToken,
      deviceInfo: _request.deviceInfo,
    );
  }

  RefreshTokenRequest get _request => source;
}
