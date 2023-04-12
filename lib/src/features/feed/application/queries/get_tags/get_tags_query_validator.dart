import 'package:injectable/injectable.dart';

import '../../../../common/application/behaviors/behavior_validator.dart';
import '../../common/common.dart';
import 'get_tags_query.dart';

@singleton
class GetTagsQueryValidator
    extends BehaviorValidator<GetTagsQuery, GetTagsResult> {}
