import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<ReadMessageRequest, JsonMap>)
class ReadMessageRequestJsonConverter
    extends JsonConverter<ReadMessageRequest, JsonMap> {
  const ReadMessageRequestJsonConverter();

  @override
  ReadMessageRequest fromJson(JsonMap json) {
    return ReadMessageRequest.fromJson(json);
  }

  @override
  JsonMap toJson(ReadMessageRequest object) {
    return object.toJson();
  }
}
