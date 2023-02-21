import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class MediatorRegistrar {
  const MediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<RegisterCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<LoginQueryHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => _getIt.get<ValidateRegisterCommandBehaviour>(),
      );
  }
}
