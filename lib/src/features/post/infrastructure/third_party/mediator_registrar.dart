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

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<CreatePostCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetPostQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<LikePostCommandValidator>()]),
      );
  }
}
