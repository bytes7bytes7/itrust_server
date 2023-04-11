import 'package:injectable/injectable.dart';

import '../../../../common/common.dart';
import '../../common/common.dart';
import 'change_personal_info.dart';

@singleton
class ChangePersonalInfoCommandValidator extends BehaviorValidator<
    ChangePersonalInfoCommand, ChangePersonalInfoResult> {}
