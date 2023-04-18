import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/get_users_request/get_users_request.dart';

@Singleton(as: JsonConverter<GetUsersRequest, JsonMap>)
class GetUsersRequestJsonConverter
    extends JsonConverter<GetUsersRequest, JsonMap> {
  const GetUsersRequestJsonConverter();

  @override
  GetUsersRequest fromJson(JsonMap json) {
    return GetUsersRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetUsersRequest object) {
    return object.toJson();
  }
}
