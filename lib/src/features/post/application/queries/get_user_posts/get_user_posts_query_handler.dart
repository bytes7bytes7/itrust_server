import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/common/posts_result.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_post_vm.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/application/view_models/post_vm/post_vm.dart';
import '../../../../common/domain/domain.dart';
import 'get_user_posts_query.dart';

const _limit = 5;

@singleton
class GetUserPostsQueryHandler extends RequestHandler<GetUserPostsQuery,
    Either<List<DetailedException>, PostsResult>> {
  const GetUserPostsQueryHandler({
    required EndUserRepository endUserRepository,
    required PostRepository postRepository,
    required MediaRepository mediaRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _postRepository = postRepository,
        _mediaRepository = mediaRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final PostRepository _postRepository;
  final MediaRepository _mediaRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostsResult>> handle(
    GetUserPostsQuery request,
  ) async {
    final user = await _endUserRepository.getByID(id: request.byUserID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    final posts = await _postRepository.getPostsByFilter(
      byUser: request.byUserID,
      limit: _limit,
      startAfter: request.lastPostID,
    );

    final postMediaVMs = HashMap<PostID, List<MediaVM>>();
    final likedByMeMap = HashMap<PostID, bool>();
    final likesAmountMap = HashMap<PostID, int>();
    final commentAmountMap = HashMap<PostID, int>();
    for (final post in posts) {
      final likedByMe = await _postRepository.isPostLikedByUser(
        postID: post.id,
        userID: request.userID,
      );
      likedByMeMap[post.id] = likedByMe;

      final likesAmount = await _postRepository.getPostLikesAmount(id: post.id);
      likesAmountMap[post.id] = likesAmount;

      final commentAmount = await _postRepository.getPostCommentsAmount(
        id: post.id,
      );
      commentAmountMap[post.id] = commentAmount;

      final mediaList = <MediaVM>[];
      for (final mediaID in post.mediaIDs) {
        final media = await _mediaRepository.get(mediaID);

        if (media == null) {
          continue;
        }

        mediaList.add(_mapster.map1(media, To<MediaVM>()));
      }

      postMediaVMs[post.id] = mediaList;
    }

    return right(
      PostsResult(
        posts: posts
            .map(
              (e) => _mapster.map2(
                e,
                ToPostVM(
                  media: postMediaVMs[e.id]!,
                  likedByMe: likedByMeMap[e.id]!,
                  likesAmount: likesAmountMap[e.id]!,
                  commentsAmount: commentAmountMap[e.id]!,
                ),
                To<PostVM>(),
              ),
            )
            .toList(),
      ),
    );
  }
}
