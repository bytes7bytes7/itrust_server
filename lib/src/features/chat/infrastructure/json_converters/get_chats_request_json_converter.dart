import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetChatsRequest, JsonMap>)
class GetChatsRequestJsonConverter
    extends JsonConverter<GetChatsRequest, JsonMap> {
  const GetChatsRequestJsonConverter();

  @override
  GetChatsRequest fromJson(JsonMap json) {
    return GetChatsRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetChatsRequest object) {
    return object.toJson();
  }
}
