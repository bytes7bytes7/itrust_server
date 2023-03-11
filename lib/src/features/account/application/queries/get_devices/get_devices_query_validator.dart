import 'package:injectable/injectable.dart';

import '../../../../common/application/application.dart';
import '../../common/common.dart';
import 'get_devices_query.dart';

@singleton
class GetDevicesQueryValidator
    extends BehaviorValidator<GetDevicesResult, GetDevicesQuery> {}
