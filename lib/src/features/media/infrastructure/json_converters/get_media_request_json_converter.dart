import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetMediaRequest, JsonMap>)
class GetMediaRequestJsonConverter
    extends JsonConverter<GetMediaRequest, JsonMap> {
  const GetMediaRequestJsonConverter();

  @override
  GetMediaRequest fromJson(JsonMap json) {
    return GetMediaRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetMediaRequest object) {
    return object.toJson();
  }
}
