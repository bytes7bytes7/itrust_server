import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/comment_post_request/comment_post_request.dart';

@Singleton(as: JsonConverter<CommentPostRequest, JsonMap>)
class CommentPostRequestJsonConverter
    extends JsonConverter<CommentPostRequest, JsonMap> {
  const CommentPostRequestJsonConverter();

  @override
  CommentPostRequest fromJson(JsonMap json) {
    return CommentPostRequest.fromJson(json);
  }

  @override
  JsonMap toJson(CommentPostRequest object) {
    return object.toJson();
  }
}
