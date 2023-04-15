import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/common/posts_result.dart';
import '../../../../common/application/exceptions/exceptions.dart';
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
      limit: _limit,
      startAfter: request.lastPostID,
      byUsers: [request.byUserID],
    );

    final postMediaVMs = HashMap<PostID, List<MediaVM>>();
    for (final post in posts) {
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
              (e) => _mapster.map3(
                e,
                request.userID,
                postMediaVMs[e.id]!,
                To<PostVM>(),
              ),
            )
            .toList(),
      ),
    );
  }
}
