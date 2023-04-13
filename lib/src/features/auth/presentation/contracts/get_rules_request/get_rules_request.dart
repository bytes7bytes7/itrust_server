import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_rules_request.g.dart';

@JsonSerializable()
class GetRulesRequest {
  const GetRulesRequest();

  factory GetRulesRequest.fromJson(JsonMap json) =>
      _$GetRulesRequestFromJson(json);

  JsonMap toJson() => _$GetRulesRequestToJson(this);
}
