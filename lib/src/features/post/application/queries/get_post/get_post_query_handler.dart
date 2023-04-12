import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'get_post_query.dart';

@singleton
class GetPostQueryHandler extends RequestHandler<GetPostQuery,
    Either<List<DetailedException>, PostResult>> {
  const GetPostQueryHandler({
    required PostRepository postRepository,
    required MediaRepository mediaRepository,
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mediaRepository = mediaRepository,
        _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final MediaRepository _mediaRepository;
  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostResult>> handle(
    GetPostQuery request,
  ) async {
    final post = await _postRepository.getByID(id: request.postID);

    if (post == null) {
      return left(
        [const PostNotFound()],
      );
    }

    User? author;
    if (post.authorID.isEndUserID) {
      author = await _endUserRepository.getByID(id: post.authorID);
    } else if (post.authorID.isStaffUserID) {
      author = await _staffUserRepository.getByID(id: post.authorID);
    }

    if (author == null) {
      return left(
        [const UserNotFound()],
      );
    }

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
        post: _mapster.map3(post, author, mediaList, To<PostVM>()),
      ),
    );
  }
}
