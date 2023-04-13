import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class RulesResultToRulesResponseMapper
    extends OneSourceMapper<RulesResult, RulesResponse> {
  RulesResultToRulesResponseMapper(super.input);

  @override
  RulesResponse map() {
    return RulesResponse(
      rules: _result.rules,
    );
  }

  RulesResult get _result => source;
}
