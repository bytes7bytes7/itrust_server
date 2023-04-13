import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';

part 'post_comment_response.g.dart';

@JsonSerializable()
class PostCommentResponse {
  const PostCommentResponse({
    required this.comment,
  });

  final CommentVM comment;

  factory PostCommentResponse.fromJson(JsonMap json) =>
      _$PostCommentResponseFromJson(json);

  JsonMap toJson() => _$PostCommentResponseToJson(this);
}
