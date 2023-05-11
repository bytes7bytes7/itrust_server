import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetChatRequest, JsonMap>)
class GetChatRequestJsonConverter
    extends JsonConverter<GetChatRequest, JsonMap> {
  const GetChatRequestJsonConverter();

  @override
  GetChatRequest fromJson(JsonMap json) {
    return GetChatRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetChatRequest object) {
    return object.toJson();
  }
}
