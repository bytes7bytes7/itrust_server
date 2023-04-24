import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_post_vm.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../common/common.dart';
import 'unlike_post_command.dart';

@singleton
class UnlikePostCommandHandler extends RequestHandler<UnlikePostCommand,
    Either<List<DetailedException>, PostResult>> {
  const UnlikePostCommandHandler({
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
    UnlikePostCommand request,
  ) async {
    final post = await _postRepository.getPostByID(id: request.postID);

    if (post == null) {
      return left(
        [const PostNotFound()],
      );
    }

    final isAlreadyLikedByMe = await _postRepository.isPostLikedByUser(
      postID: request.postID,
      userID: request.userID,
    );

    if (!isAlreadyLikedByMe) {
      return left(
        [const YouNotLikedPostYet()],
      );
    }

    await _postRepository.unlikePost(
      postID: request.postID,
      userID: request.userID,
    );

    final mediaList = <MediaVM>[];
    for (final id in post.mediaIDs) {
      final media = await _mediaRepository.get(id);

      if (media == null) {
        continue;
      }

      mediaList.add(_mapster.map1(media, To<MediaVM>()));
    }

    final likesAmount =
        await _postRepository.getPostLikesAmount(id: request.postID);
    final commentsAmount =
        await _postRepository.getPostCommentsAmount(id: request.postID);

    return right(
      PostResult(
        post: _mapster.map2(
          post,
          ToPostVM(
            media: mediaList,
            likedByMe: false,
            likesAmount: likesAmount,
            commentsAmount: commentsAmount,
          ),
          To<PostVM>(),
        ),
      ),
    );
  }
}
