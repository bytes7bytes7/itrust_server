import 'package:fluent_validation/fluent_validation.dart';
import 'package:injectable/injectable.dart';

import 'register_command.dart';

@singleton
class RegisterCommandValidator extends AbstractValidator<RegisterCommand> {
  RegisterCommandValidator() {
    ruleFor((e) => e.firstName, key: 'firstName').notEmpty();
    ruleFor((e) => e.lastName, key: 'lastName').notEmpty();
    ruleFor((e) => e.email, key: 'email').notEmpty();
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
