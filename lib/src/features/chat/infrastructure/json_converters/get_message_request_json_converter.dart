import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetMessageRequest, JsonMap>)
class GetMessageRequestJsonConverter
    extends JsonConverter<GetMessageRequest, JsonMap> {
  const GetMessageRequestJsonConverter();

  @override
  GetMessageRequest fromJson(JsonMap json) {
    return GetMessageRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetMessageRequest object) {
    return object.toJson();
  }
}
