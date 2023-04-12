import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<LikePostRequest, JsonMap>)
class LikePostRequestJsonConverter
    extends JsonConverter<LikePostRequest, JsonMap> {
  const LikePostRequestJsonConverter();

  @override
  LikePostRequest fromJson(JsonMap json) {
    return LikePostRequest.fromJson(json);
  }

  @override
  JsonMap toJson(LikePostRequest object) {
    return object.toJson();
  }
}
