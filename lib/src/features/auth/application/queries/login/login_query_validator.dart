import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'login_query.dart';

@singleton
class LoginQueryValidator extends BehaviorValidator<AuthResult, LoginQuery> {
  LoginQueryValidator() {
    ruleFor((e) => e.email, key: 'email').notEmpty();
    ruleFor((e) => e.password, key: 'password').notEmpty();
  }
}
