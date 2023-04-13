import 'package:mapster/mapster.dart';

import '../../application/queries/get_rules/get_rules.dart';
import '../../presentation/contracts/contracts.dart';

class GetRulesRequestToGetRulesQueryMapper
    extends OneSourceMapper<GetRulesRequest, GetRulesQuery> {
  GetRulesRequestToGetRulesQueryMapper(super.input);

  @override
  GetRulesQuery map() {
    return GetRulesQuery();
  }
}
