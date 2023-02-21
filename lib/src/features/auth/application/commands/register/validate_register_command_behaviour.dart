import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'register_command.dart';

@injectable
class ValidateRegisterCommandBehaviour extends PipelineBehavior<
    Either<DetailedException, AuthResult>, RegisterCommand> {
  const ValidateRegisterCommandBehaviour();

  @override
  FutureOr<Either<DetailedException, AuthResult>> handle(
    RegisterCommand request,
    RequestHandlerDelegate<Either<DetailedException, AuthResult>> next,
  ) async {
    final result = await next();

    return result;
  }
}
