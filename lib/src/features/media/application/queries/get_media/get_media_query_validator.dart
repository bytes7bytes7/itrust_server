import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_media_query.dart';

@singleton
class GetMediaQueryValidator
    extends BehaviorValidator<GetMediaQuery, MediaResult> {}
