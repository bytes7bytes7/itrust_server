import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<LikePostCommentRequest, JsonMap>)
class LikePostCommentRequestJsonConverter
    extends JsonConverter<LikePostCommentRequest, JsonMap> {
  const LikePostCommentRequestJsonConverter();

  @override
  LikePostCommentRequest fromJson(JsonMap json) {
    return LikePostCommentRequest.fromJson(json);
  }

  @override
  JsonMap toJson(LikePostCommentRequest object) {
    return object.toJson();
  }
}
