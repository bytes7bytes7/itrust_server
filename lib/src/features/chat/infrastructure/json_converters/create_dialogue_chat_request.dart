import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<CreateDialogueChatRequest, JsonMap>)
class CreateDialogueChatRequestJsonConverter
    extends JsonConverter<CreateDialogueChatRequest, JsonMap> {
  const CreateDialogueChatRequestJsonConverter();

  @override
  CreateDialogueChatRequest fromJson(JsonMap json) {
    return CreateDialogueChatRequest.fromJson(json);
  }

  @override
  JsonMap toJson(CreateDialogueChatRequest object) {
    return object.toJson();
  }
}
