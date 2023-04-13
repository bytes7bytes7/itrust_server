import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'like_post_comment_request.g.dart';

@JsonSerializable()
class LikePostCommentRequest {
  const LikePostCommentRequest({
    required this.postID,
    required this.commentID,
  });

  @JsonKey(name: postIDKey)
  final String postID;

  @JsonKey(name: commentIDKey)
  final String commentID;

  factory LikePostCommentRequest.fromJson(JsonMap json) =>
      _$LikePostCommentRequestFromJson(json);

  JsonMap toJson() => _$LikePostCommentRequestToJson(this);
}
