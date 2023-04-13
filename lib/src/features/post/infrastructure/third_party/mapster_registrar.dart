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
      )
      ..register(
        MapperMeta.three(
          UnlikePostRequestPostIDUserIDToUnlikePostCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.three(
          GetPostCommentsRequestPostIDUserIDToGetPostCommentsQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(PostCommentsResultToPostCommentsResponseMapper.new),
      )
      ..register(
        MapperMeta.three(
          CommentPostRequestPostIDUseIDToCommentPostCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(PostCommentResultToPostCommentResponseMapper.new),
      );
  }
}
