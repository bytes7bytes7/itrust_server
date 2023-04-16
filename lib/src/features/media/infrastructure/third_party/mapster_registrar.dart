import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class MediaMapsterRegistrar {
  const MediaMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(GetMediaRequestToGetMediaQueryMapper.new),
      )
      ..register(
        MapperMeta.one(MediaResultToMediaResponseMapper.new),
      );
  }
}
