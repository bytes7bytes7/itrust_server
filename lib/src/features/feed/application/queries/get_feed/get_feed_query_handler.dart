import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import 'get_feed_query.dart';

const _postLimit = 5;

@singleton
class GetFeedQueryHandler extends RequestHandler<GetFeedQuery,
    Either<List<DetailedException>, GetFeedResult>> {
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
  FutureOr<Either<List<DetailedException>, GetFeedResult>> handle(
    GetFeedQuery request,
  ) async {
    final posts = await _postRepository.getPostsByFilter(
      limit: _postLimit,
      byAllUsers: true,
      startAfter: request.lastPostID,
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
      GetFeedResult(
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
