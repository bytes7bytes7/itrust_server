import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<ListenChatsRequest, JsonMap>)
class ListenChatsRequestJsonConverter
    extends JsonConverter<ListenChatsRequest, JsonMap> {
  const ListenChatsRequestJsonConverter();

  @override
  ListenChatsRequest fromJson(JsonMap json) {
    return ListenChatsRequest.fromJson(json);
  }

  @override
  JsonMap toJson(ListenChatsRequest object) {
    return object.toJson();
  }
}
