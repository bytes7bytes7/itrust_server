import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/application/behaviors/validation_behavior.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class ChatMediatorRegistrar {
  const ChatMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<GetChatsQueryHandler>())
      ..registerRequestHandler(
        () => _getIt.get<CreateMonologueChatCommandHandler>(),
      )
      ..registerRequestHandler(() => _getIt.get<ListenChatsQueryHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetChatsQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<CreateMonologueChatCommandValidator>()],
        ),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<ListenChatsQueryValidator>()]),
      );
  }
}
