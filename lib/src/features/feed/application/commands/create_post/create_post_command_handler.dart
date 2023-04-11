import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import '../../view_models/view_models.dart';
import 'create_post_command.dart';

@singleton
class CreatePostCommandHandler extends RequestHandler<CreatePostCommand,
    Either<List<DetailedException>, PostResult>> {
  const CreatePostCommandHandler({
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, PostResult>> handle(
    CreatePostCommand request,
  ) async {
    final post = await _postRepository.create(
      newPost: request.post,
      authorID: request.userID,
    );

    return right(
      PostResult(
        post: _mapster.map2(post, request.userID, To<PostVM>()),
      ),
    );
  }
}
