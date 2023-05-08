import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<CreateGroupChatRequest, JsonMap>)
class CreateGroupChatRequestJsonConverter
    extends JsonConverter<CreateGroupChatRequest, JsonMap> {
  const CreateGroupChatRequestJsonConverter();

  @override
  CreateGroupChatRequest fromJson(JsonMap json) {
    return CreateGroupChatRequest.fromJson(json);
  }

  @override
  JsonMap toJson(CreateGroupChatRequest object) {
    return object.toJson();
  }
}
