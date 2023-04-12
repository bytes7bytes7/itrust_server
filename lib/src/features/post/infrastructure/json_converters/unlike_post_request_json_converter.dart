import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<UnlikePostRequest, JsonMap>)
class UnlikePostRequestJsonConverter
    extends JsonConverter<UnlikePostRequest, JsonMap> {
  const UnlikePostRequestJsonConverter();

  @override
  UnlikePostRequest fromJson(JsonMap json) {
    return UnlikePostRequest.fromJson(json);
  }

  @override
  JsonMap toJson(UnlikePostRequest object) {
    return object.toJson();
  }
}
