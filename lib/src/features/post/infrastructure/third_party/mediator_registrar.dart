import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/application/behaviors/validation_behavior.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class PostMediatorRegistrar {
  const PostMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<CreatePostCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetPostQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<LikePostCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<UnlikePostCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetPostCommentsQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<CommentPostCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetPostCommentQueryHandler>())
      ..registerRequestHandler(
        () => _getIt.get<LikePostCommentCommandHandler>(),
      )
      ..registerRequestHandler(
        () => _getIt.get<UnlikePostCommentCommandHandler>(),
      )
      ..registerRequestHandler(() => _getIt.get<GetUserPostsQueryHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<CreatePostCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetPostQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<LikePostCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<UnlikePostCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetPostCommentsQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<CommentPostCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetPostCommentQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () =>
            ValidationBehavior([_getIt.get<LikePostCommentCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<UnlikePostCommentCommandValidator>()],
        ),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetUserPostsQueryValidator>()]),
      );
  }
}
