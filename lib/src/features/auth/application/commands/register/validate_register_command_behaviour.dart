import 'dart:async';

import 'package:fluent_validation/fluent_validation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'register_command.dart';
import 'register_command_validator.dart';

@injectable
class ValidateRegisterCommandBehaviour extends PipelineBehavior<
    Either<List<DetailedException>, AuthResult>, RegisterCommand> {
  ValidateRegisterCommandBehaviour(
    RegisterCommandValidator registerCommandValidator,
  ) : _validators = [registerCommandValidator];

  final List<AbstractValidator<RegisterCommand>> _validators;

  @override
  FutureOr<Either<List<DetailedException>, AuthResult>> handle(
    RegisterCommand request,
    RequestHandlerDelegate<Either<List<DetailedException>, AuthResult>> next,
  ) async {
    final errors = <ValidationError>[];

    for (final validator in _validators) {
      final validationResult = validator.validate(request);

      errors.addAll(validationResult.errors);
    }

    if (errors.isNotEmpty) {
      return left(
        errors
            .map(
              (e) => DetailedException.validation(
                code: e.key,
                description: e.message,
              ),
            )
            .toList(),
      );
    }

    return await next();
  }
}
