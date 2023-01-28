import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediatr/mediatr.dart';

import '../../../common/common.dart';
import '../../application/application.dart';

@singleton
class MediatorRegister {
  const MediatorRegister(
    this._mediator,
    this._registerCommandHandler,
    this._loginQueryHandler,
  );

  final Mediator _mediator;
  final RegisterCommandHandler _registerCommandHandler;
  final LoginQueryHandler _loginQueryHandler;

  @postConstruct
  void register() {
    _mediator
      ..registerHandler<Either<DetailedException, AuthResult>, RegisterCommand,
          RegisterCommandHandler>(() => _registerCommandHandler)
      ..registerHandler<Either<DetailedException, AuthResult>, LoginQuery,
          LoginQueryHandler>(() => _loginQueryHandler);
  }
}
