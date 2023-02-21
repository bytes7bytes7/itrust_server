import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../presentation/mappers/mappers.dart';

final _getIt = GetIt.instance;

@singleton
class MapsterRegistrar {
  const MapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.one(
          (input) => _getIt.get<RegisterRequestToRegisterCommandMapper>(
            param1: input,
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => _getIt.get<LoginRequestToLoginQueryMapper>(
            param1: input,
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => _getIt.get<AuthResultToAuthResponseMapper>(
            param1: input,
          ),
        ),
      );
  }
}
