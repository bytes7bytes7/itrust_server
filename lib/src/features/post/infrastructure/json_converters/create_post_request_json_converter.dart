import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<CreatePostRequest, JsonMap>)
class CreatePostRequestJsonConverter
    extends JsonConverter<CreatePostRequest, JsonMap> {
  const CreatePostRequestJsonConverter();

  @override
  CreatePostRequest fromJson(JsonMap json) {
    return CreatePostRequest.fromJson(json);
  }

  @override
  JsonMap toJson(CreatePostRequest object) {
    return object.toJson();
  }
}
