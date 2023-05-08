import 'dart:async';

import 'package:fluent_validation/fluent_validation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../exceptions/detailed_exception.dart';
import 'behavior_validator.dart';

class StreamValidationBehavior<
        RQ extends StreamRequest<Either<List<DetailedException>, RS>>, RS>
    extends StreamPipelineBehavior<RQ, Either<List<DetailedException>, RS>> {
  StreamValidationBehavior(@factoryParam this._validators);

  final List<BehaviorValidator<RQ, RS>> _validators;

  @override
  FutureOr<Stream<Either<List<DetailedException>, RS>>> handle(
    RQ request,
    StreamHandlerDelegate<Either<List<DetailedException>, RS>> next,
  ) async {
    final errors = <ValidationError>[];

    for (final validator in _validators) {
      final validationResult = validator.validate(request);

      errors.addAll(validationResult.errors);
    }

    if (errors.isNotEmpty) {
      return Stream.value(
        left(
          errors
              .map(
                (e) => DetailedException.validation(
                  code: e.key,
                  description: e.message,
                ),
              )
              .toList(),
        ),
      );
    }

    return await next();
  }
}
