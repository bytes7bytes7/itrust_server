import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<SendMessageRequest, JsonMap>)
class SendMessageRequestJsonConverter
    extends JsonConverter<SendMessageRequest, JsonMap> {
  const SendMessageRequestJsonConverter();

  @override
  SendMessageRequest fromJson(JsonMap json) {
    return SendMessageRequest.fromJson(json);
  }

  @override
  JsonMap toJson(SendMessageRequest object) {
    return object.toJson();
  }
}
