import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../common/application/application.dart';
import '../../application/application.dart';

final _getIt = GetIt.instance;

@singleton
class AccountMediatorRegistrar {
  const AccountMediatorRegistrar(this._mediator);

  final Mediator _mediator;

  @postConstruct
  void register() {
    _mediator
      // RequestHandler
      ..registerRequestHandler(
        () => _getIt.get<ChangePersonalInfoCommandHandler>(),
      )

      // PipelineBehavior
      ..registerPipelineBehavior(
        () => ValidationBehavior(
          [_getIt.get<ChangePersonalInfoCommandValidator>()],
        ),
      );
  }
}
