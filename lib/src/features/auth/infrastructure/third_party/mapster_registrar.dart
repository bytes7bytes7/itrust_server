import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../presentation/mappers/mappers.dart';

@singleton
class MapsterRegistrar {
  const MapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster.registerAll(
      const [
        RegisterRequestToRegisterCommandMapper(),
        LoginRequestToLoginQueryMapper(),
        AuthResultToAuthResponseMapper(),
      ],
    );
  }
}
