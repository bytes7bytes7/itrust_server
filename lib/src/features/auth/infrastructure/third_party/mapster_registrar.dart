import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class MapsterRegistrar {
  const MapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(MapperMeta.one(RegisterRequestToRegisterCommandMapper.new))
      ..register(MapperMeta.one(LogInRequestToLogInQueryMapper.new))
      ..register(MapperMeta.one(AuthResultToAuthResponseMapper.new))
      ..register(MapperMeta.two(LogOutRequestUserToLogOutCommandMapper.new))
      ..register(MapperMeta.one(LogOutResultToLogOutResponse.new))
      ..register(
        MapperMeta.two(VerifyTokenRequestUserToVerifyTokenQueryMapper.new),
      )
      ..register(
        MapperMeta.one(VerifyTokenResultToVerifyTokenResponseMapper.new),
      );
  }
}
