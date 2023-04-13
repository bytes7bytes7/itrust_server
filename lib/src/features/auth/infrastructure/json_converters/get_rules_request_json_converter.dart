import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetRulesRequest, JsonMap>)
class GetRulesRequestJsonConverter
    extends JsonConverter<GetRulesRequest, JsonMap> {
  const GetRulesRequestJsonConverter();

  @override
  GetRulesRequest fromJson(JsonMap json) {
    return GetRulesRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetRulesRequest object) {
    return object.toJson();
  }
}
