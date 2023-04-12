import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetPostRequest, JsonMap>)
class GetPostRequestJsonConverter
    extends JsonConverter<GetPostRequest, JsonMap> {
  const GetPostRequestJsonConverter();

  @override
  GetPostRequest fromJson(JsonMap json) {
    return GetPostRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetPostRequest object) {
    return object.toJson();
  }
}
