import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../../../../itrust_server.dart';

@singleton
class UserMapsterRegistrar {
  const UserMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(MapperMeta.two(GetUserRequestIDToGetUserQueryMapper.new))
      ..register(MapperMeta.one(GetUserResultToGetUserResponseMapper.new));
  }
}
