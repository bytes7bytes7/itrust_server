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
        MapperMeta.two(CreatePostRequestToCreatePostCommandMapper.new),
      )
      ..register(
        MapperMeta.one(PostResultToPostResponseMapper.new),
      )
      ..register(
        MapperMeta.two(GetPostRequestToGetPostQueryMapper.new),
      )
      ..register(
        MapperMeta.two(LikePostRequestToLikePostCommandMapper.new),
      )
      ..register(
        MapperMeta.two(UnlikePostRequestToUnlikePostCommandMapper.new),
      )
      ..register(
        MapperMeta.two(GetPostCommentsRequestToGetPostCommentsQueryMapper.new),
      )
      ..register(
        MapperMeta.one(PostCommentsResultToPostCommentsResponseMapper.new),
      )
      ..register(
        MapperMeta.two(CommentPostRequestToCommentPostCommandMapper.new),
      )
      ..register(
        MapperMeta.one(PostCommentResultToPostCommentResponseMapper.new),
      )
      ..register(
        MapperMeta.two(GetPostCommentRequestToGetPostCommentQueryMapper.new),
      )
      ..register(
        MapperMeta.two(
          LikePostCommentRequestToLikePostCommentCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          UnlikePostCommentRequestToUnlikePostCommentCommandMapper.new,
        ),
      );
  }
}
