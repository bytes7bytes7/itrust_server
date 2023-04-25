import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<CreateMonologueChatRequest, JsonMap>)
class CreateMonologueChatRequestJsonConverter
    extends JsonConverter<CreateMonologueChatRequest, JsonMap> {
  const CreateMonologueChatRequestJsonConverter();

  @override
  CreateMonologueChatRequest fromJson(JsonMap json) {
    return CreateMonologueChatRequest.fromJson(json);
  }

  @override
  JsonMap toJson(CreateMonologueChatRequest object) {
    return object.toJson();
  }
}
