import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetUserByIDRequest, JsonMap>)
class GetUserByIDRequestJsonConverter
    extends JsonConverter<GetUserByIDRequest, JsonMap> {
  const GetUserByIDRequestJsonConverter();

  @override
  GetUserByIDRequest fromJson(JsonMap json) {
    return GetUserByIDRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserByIDRequest object) {
    return object.toJson();
  }
}
