import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class AuthMapsterRegistrar {
  const AuthMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(MapperMeta.two(RegisterRequestToRegisterCommandMapper.new))
      ..register(MapperMeta.two(LogInRequestToLogInQueryMapper.new))
      ..register(MapperMeta.one(AuthResultToAuthResponseMapper.new))
      ..register(MapperMeta.two(LogOutRequestToLogOutCommandMapper.new))
      ..register(MapperMeta.one(LogOutResultToLogOutResponse.new))
      ..register(MapperMeta.two(VerifyTokenRequestToVerifyTokenQueryMapper.new))
      ..register(
        MapperMeta.one(VerifyTokenResultToVerifyTokenResponseMapper.new),
      )
      ..register(
        MapperMeta.two(RefreshTokenRequestToRefreshTokenCommandMapper.new),
      )
      ..register(
        MapperMeta.one(RefreshTokenResultToRefreshTokenResponseMapper.new),
      )
      ..register(MapperMeta.one(GetRulesRequestToGetRulesQueryMapper.new))
      ..register(MapperMeta.one(RulesResultToRulesResponseMapper.new));
  }
}
