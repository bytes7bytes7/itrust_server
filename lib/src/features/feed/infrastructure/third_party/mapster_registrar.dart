import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class FeedMapsterRegistrar {
  const FeedMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(GetFeedRequestToGetFeedQueryMapper.new),
      )
      ..register(
        MapperMeta.one(GetFeedResultToGetFeedResponseMapper.new),
      )
      ..register(
        MapperMeta.two(GetTagsRequestToGetTagsQueryMapper.new),
      )
      ..register(
        MapperMeta.one(GetTagsResultToGetTagsResponseMapper.new),
      );
  }
}
