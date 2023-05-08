import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<ListenMessagesRequest, JsonMap>)
class ListenMessagesRequestJsonConverter
    extends JsonConverter<ListenMessagesRequest, JsonMap> {
  const ListenMessagesRequestJsonConverter();

  @override
  ListenMessagesRequest fromJson(JsonMap json) {
    return ListenMessagesRequest.fromJson(json);
  }

  @override
  JsonMap toJson(ListenMessagesRequest object) {
    return object.toJson();
  }
}
