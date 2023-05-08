import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetMessagesRequest, JsonMap>)
class GetMessagesRequestJsonConverter
    extends JsonConverter<GetMessagesRequest, JsonMap> {
  const GetMessagesRequestJsonConverter();

  @override
  GetMessagesRequest fromJson(JsonMap json) {
    return GetMessagesRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetMessagesRequest object) {
    return object.toJson();
  }
}
