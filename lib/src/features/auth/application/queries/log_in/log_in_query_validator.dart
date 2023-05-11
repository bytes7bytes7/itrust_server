import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'log_in_query.dart';

@singleton
class LogInQueryValidator extends BehaviorValidator<LogInQuery, AuthResult> {
  LogInQueryValidator() {
    // TODO: add email validation
    ruleFor((e) => e.email, key: 'email').notEmpty();
    // TODO: add password validation
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
