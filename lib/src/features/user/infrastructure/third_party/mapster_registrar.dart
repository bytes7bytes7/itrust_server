import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class UserMapsterRegistrar {
  const UserMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(IDToGetUserQueryMapper.new),
      )
      ..register(
        MapperMeta.one(GetUserByIDResultToGetUserByIDResponseMapper.new),
      )
      ..register(
        MapperMeta.two(NickToGetUserByNickQueryMapper.new),
      )
      ..register(
        MapperMeta.one(GetUserByNickResultToGetUserByNickResponseMapper.new),
      );
  }
}
