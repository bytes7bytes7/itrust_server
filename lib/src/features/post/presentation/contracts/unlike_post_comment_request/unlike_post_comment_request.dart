import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'unlike_post_comment_request.g.dart';

@JsonSerializable()
class UnlikePostCommentRequest {
  const UnlikePostCommentRequest({
    required this.postID,
    required this.commentID,
  });

  @JsonKey(name: postIDKey)
  final String postID;

  @JsonKey(name: commentIDKey)
  final String commentID;

  factory UnlikePostCommentRequest.fromJson(JsonMap json) =>
      _$UnlikePostCommentRequestFromJson(json);

  JsonMap toJson() => _$UnlikePostCommentRequestToJson(this);
}
