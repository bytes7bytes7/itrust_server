import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetUserByNickRequest, JsonMap>)
class GetUserByNickRequestJsonConverter
    extends JsonConverter<GetUserByNickRequest, JsonMap> {
  const GetUserByNickRequestJsonConverter();

  @override
  GetUserByNickRequest fromJson(JsonMap json) {
    return GetUserByNickRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserByNickRequest object) {
    return object.toJson();
  }
}
