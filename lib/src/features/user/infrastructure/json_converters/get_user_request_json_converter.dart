import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetUserRequest, JsonMap>)
class GetUserRequestJsonConvert extends JsonConverter<GetUserRequest, JsonMap> {
  @override
  GetUserRequest fromJson(JsonMap json) {
    return GetUserRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserRequest object) {
    return object.toJson();
  }
}
