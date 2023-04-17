import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<UserActionRequest, JsonMap>)
class UserActionRequestJsonConverter
    extends JsonConverter<UserActionRequest, JsonMap> {
  const UserActionRequestJsonConverter();

  @override
  UserActionRequest fromJson(JsonMap json) {
    return UserActionRequest.fromJson(json);
  }

  @override
  JsonMap toJson(UserActionRequest object) {
    return object.toJson();
  }
}
