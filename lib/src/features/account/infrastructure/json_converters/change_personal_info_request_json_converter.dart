import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<ChangePersonalInfoRequest, JsonMap>)
class ChangePersonalInfoRequestJsonConverter
    extends JsonConverter<ChangePersonalInfoRequest, JsonMap> {
  const ChangePersonalInfoRequestJsonConverter();

  @override
  ChangePersonalInfoRequest fromJson(JsonMap json) {
    return ChangePersonalInfoRequest.fromJson(json);
  }

  @override
  JsonMap toJson(ChangePersonalInfoRequest object) {
    return object.toJson();
  }
}
