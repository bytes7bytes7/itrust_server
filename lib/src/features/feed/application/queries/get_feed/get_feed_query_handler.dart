import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/common/posts_result.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/mapper_dto/to_post_vm.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import 'get_feed_query.dart';

const _postLimit = 5;

@singleton
class GetFeedQueryHandler extends RequestHandler<GetFeedQuery,
    Either<List<DetailedException>, PostsResult>> {
  const GetFeedQueryHandler({
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
  FutureOr<Either<List<DetailedException>, PostsResult>> handle(
    GetFeedQuery request,
  ) async {
    final posts = await _postRepository.getFeedByFilter(
      forUser: request.userID,
      limit: _postLimit,
      startAfter: request.lastPostID,
    );

    final postMediaVMs = HashMap<PostID, List<MediaVM>>();
    final likedByMeMap = HashMap<PostID, bool>();
    final likesAmountMap = HashMap<PostID, int>();
    final commentsAmountMap = HashMap<PostID, int>();
    for (final post in posts) {
      final likedByMe = await _postRepository.isPostLikedByUser(
        postID: post.id,
        userID: request.userID,
      );
      likedByMeMap[post.id] = likedByMe;

      final likesAmount = await _postRepository.getPostLikesAmount(id: post.id);
      likesAmountMap[post.id] = likesAmount;

      final commentsAmount =
          await _postRepository.getPostCommentsAmount(id: post.id);
      commentsAmountMap[post.id] = commentsAmount;

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
                  commentsAmount: commentsAmountMap[e.id]!,
                ),
                To<PostVM>(),
              ),
            )
            .toList(),
      ),
    );
  }
}
