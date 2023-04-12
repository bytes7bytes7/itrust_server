import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../common/common.dart';
import 'create_post_command.dart';

@singleton
class CreatePostCommandHandler extends RequestHandler<CreatePostCommand,
    Either<List<DetailedException>, PostResult>> {
  const CreatePostCommandHandler({
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
    CreatePostCommand request,
  ) async {
    final post = await _postRepository.create(
      newPost: request.post,
      authorID: request.userID,
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
