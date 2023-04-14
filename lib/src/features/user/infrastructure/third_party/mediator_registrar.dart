import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/application/application.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class UserMediatorRegistrar {
  const UserMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(() => _getIt.get<GetUserByIDQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<GetUserByNickQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<GetFriendsQueryHandler>())
      ..registerRequestHandler(() => _getIt.get<SendFriendBidCommandHandler>())
      ..registerRequestHandler(() => _getIt.get<GetUserInfoQueryHandler>())
      ..registerRequestHandler(
        () => _getIt.get<CancelFriendBidCommandHandler>(),
      )
      ..registerRequestHandler(
        () => _getIt.get<RespondFriendBidCommandHandler>(),
      )

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetUserByIDQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetUserByNickQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetFriendsQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<SendFriendBidCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior([_getIt.get<GetUserInfoQueryValidator>()]),
      )
      ..registerPipelineBehavior(
        () =>
            ValidationBehavior([_getIt.get<CancelFriendBidCommandValidator>()]),
      )
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<RespondFriendBidCommandValidator>()],
        ),
      );
  }
}
