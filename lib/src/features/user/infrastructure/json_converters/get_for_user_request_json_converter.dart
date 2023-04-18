import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/get_for_user_request/get_for_user_request.dart';

@Singleton(as: JsonConverter<GetForUserRequest, JsonMap>)
class GetForUserRequestJsonConverter
    extends JsonConverter<GetForUserRequest, JsonMap> {
  const GetForUserRequestJsonConverter();

  @override
  GetForUserRequest fromJson(JsonMap json) {
    return GetForUserRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetForUserRequest object) {
    return object.toJson();
  }
}
