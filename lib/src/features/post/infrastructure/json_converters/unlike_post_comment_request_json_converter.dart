import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<UnlikePostCommentRequest, JsonMap>)
class UnlikePostCommentRequestJsonConverter
    extends JsonConverter<UnlikePostCommentRequest, JsonMap> {
  const UnlikePostCommentRequestJsonConverter();

  @override
  UnlikePostCommentRequest fromJson(JsonMap json) {
    return UnlikePostCommentRequest.fromJson(json);
  }

  @override
  JsonMap toJson(UnlikePostCommentRequest object) {
    return object.toJson();
  }
}
