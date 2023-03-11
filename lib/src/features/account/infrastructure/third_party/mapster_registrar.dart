import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class AccountMapsterRegistrar {
  const AccountMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(
          ChangePersonalInfoRequestIDToChangePersonalInfoCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(
          ChangePersonalInfoResultToChangePersonalInfoResponseMapper.new,
        ),
      )
      ..register(MapperMeta.one(GetDevicesRequestToGetDevicesQueryMapper.new))
      ..register(
        MapperMeta.one(GetDevicesResultToGetDevicesResponseMapper.new),
      );
  }
}
