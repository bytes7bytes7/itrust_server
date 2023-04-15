import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../common/common.dart';
import 'create_post_command.dart';

@singleton
class CreatePostCommandHandler extends RequestHandler<CreatePostCommand,
    Either<List<DetailedException>, PostResult>> {
  const CreatePostCommandHandler({
    required PostRepository postRepository,
    required MediaRepository mediaRepository,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mediaRepository = mediaRepository,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final MediaRepository _mediaRepository;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostResult>> handle(
    CreatePostCommand request,
  ) async {
    final post = await _postRepository.createPost(
      newPost: request.post,
      authorID: request.userID,
    );

    final user = await _endUserRepository.getByID(id: request.userID);

    if (user == null) {
      return left(
        [const UserNotFound()],
      );
    }

    await _endUserRepository.addOrUpdate(
      user: user.copyWith(
        posts: List.of(user.posts)..add(post.id),
      ),
    );

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
        post: _mapster.map3(post, request.userID, mediaList, To<PostVM>()),
      ),
    );
  }
}
