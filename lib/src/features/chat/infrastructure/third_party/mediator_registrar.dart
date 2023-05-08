import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/application/behaviors/behaviors.dart';
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
      ..registerStreamRequestHandler(
        () => _getIt.get<ListenChatsQueryHandler>(),
      )
      ..registerRequestHandler(() => _getIt.get<SendMessageCommandHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetChatsQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<CreateMonologueChatCommandValidator>()],
        ),
      )
      ..registerStreamPipelineBehavior(
        () =>
            StreamValidationBehavior([_getIt.get<ListenChatsQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<SendMessageCommandValidator>()]),
      );
  }
}
