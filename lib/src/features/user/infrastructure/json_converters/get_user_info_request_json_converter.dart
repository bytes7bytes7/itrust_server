import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetUserInfoRequest, JsonMap>)
class GetUserInfoRequestJsonConverter
    extends JsonConverter<GetUserInfoRequest, JsonMap> {
  const GetUserInfoRequestJsonConverter();

  @override
  GetUserInfoRequest fromJson(JsonMap json) {
    return GetUserInfoRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserInfoRequest object) {
    return object.toJson();
  }
}
