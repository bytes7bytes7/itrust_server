import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/application/behaviors/validation_behavior.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class FeedMediatorRegistrar {
  const FeedMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<GetFeedQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<CreatePostCommandHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetFeedQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<CreatePostCommandValidator>()]),
      );
  }
}
