import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'register_command.dart';

@singleton
class RegisterCommandValidator
    extends BehaviorValidator<RegisterCommand, AuthResult> {
  RegisterCommandValidator() {
    ruleFor((e) => e.firstName, key: 'firstName').notEmpty();
    ruleFor((e) => e.lastName, key: 'lastName').notEmpty();
    // TODO: add email validation
    ruleFor((e) => e.email, key: 'email').notEmpty();
    // TODO: add password validation
    ruleFor((e) => e.password, key: 'password').notEmpty();
    ruleFor((e) => e.agreeWithRules, key: 'agreeWithRules').equal(true);
  }
}
