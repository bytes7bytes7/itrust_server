import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class PostMapsterRegistrar {
  const PostMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(CreatePostRequestIDToCreatePostCommandMapper.new),
      )
      ..register(
        MapperMeta.one(PostResultToPostResponseMapper.new),
      )
      ..register(
        MapperMeta.three(GetPostRequestPostIDUserIDToGetPostQueryMapper.new),
      )
      ..register(
        MapperMeta.three(
          LikePostRequestPostIDUserIDToLikePostCommandMapper.new,
        ),
      );
  }
}
