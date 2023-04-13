import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../common/common.dart';
import 'like_post_command.dart';

@singleton
class LikePostCommandHandler extends RequestHandler<LikePostCommand,
    Either<List<DetailedException>, PostResult>> {
  const LikePostCommandHandler({
    required PostRepository postRepository,
    required MediaRepository mediaRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mediaRepository = mediaRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final MediaRepository _mediaRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostResult>> handle(
    LikePostCommand request,
  ) async {
    final post = await _postRepository.getPostByID(id: request.postID);

    if (post == null) {
      return left(
        [const PostNotFound()],
      );
    }

    if (post.likedByIDs.contains(request.userID)) {
      return left(
        [const YouAlreadyLikedPost()],
      );
    }

    final updatedPost = post.copyWith(
      likedByIDs: List.of(post.likedByIDs)..add(request.userID),
    );

    await _postRepository.updatePost(post: updatedPost);

    final mediaList = <MediaVM>[];
    for (final id in post.mediaIDs) {
      final media = await _mediaRepository.get(id);

      if (media == null) {
        continue;
      }

      mediaList.add(_mapster.map1(media, To<MediaVM>()));
    }

    return right(
      PostResult(
        post:
            _mapster.map3(updatedPost, request.userID, mediaList, To<PostVM>()),
      ),
    );
  }
}
