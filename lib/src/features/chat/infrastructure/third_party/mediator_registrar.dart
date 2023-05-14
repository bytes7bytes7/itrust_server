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
      ..registerRequestHandler(() => _getIt.get<GetChatQueryHandler>())
      ..registerRequestHandler(
        () => _getIt.get<CreateMonologueChatCommandHandler>(),
      )
      ..registerRequestHandler(
        () => _getIt.get<CreateGroupChatCommandHandler>(),
      )
      ..registerRequestHandler(
        () => _getIt.get<GetChatPartnersQueryHandler>(),
      )
      ..registerStreamRequestHandler(
        () => _getIt.get<ListenChatsQueryHandler>(),
      )
      ..registerRequestHandler(() => _getIt.get<SendMessageCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetMessagesQueryHandler>())
      ..registerStreamRequestHandler(
        () => _getIt.get<ListenMessagesQueryHandler>(),
      )
      ..registerRequestHandler(() => _getIt.get<GetMessageQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<ReadMessageCommandHandler>())

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetChatsQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetChatQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<CreateMonologueChatCommandValidator>()],
        ),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<CreateGroupChatCommandValidator>()],
        ),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<GetChatPartnersQueryValidator>()],
        ),
      )
      ..registerStreamPipelineBehavior(
        () =>
            StreamValidationBehavior([_getIt.get<ListenChatsQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<SendMessageCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetMessagesQueryValidator>()]),
      )
      ..registerStreamPipelineBehavior(
        () => StreamValidationBehavior(
          [_getIt.get<ListenMessagesQueryValidator>()],
        ),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetMessageQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<ReadMessageCommandValidator>()]),
      );
  }
}
