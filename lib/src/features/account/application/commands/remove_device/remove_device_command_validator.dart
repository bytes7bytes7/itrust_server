import 'package:injectable/injectable.dart';

import '../../../../common/application/application.dart';
import '../../common/common.dart';
import 'remove_device_command.dart';

@singleton
class RemoveDeviceCommandValidator
    extends BehaviorValidator<RemoveDeviceCommand, RemoveDeviceResult> {}
