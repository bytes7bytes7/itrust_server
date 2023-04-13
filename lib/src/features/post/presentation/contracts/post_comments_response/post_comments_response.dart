import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/comment_vm/comment_vm.dart';

part 'post_comments_response.g.dart';

@JsonSerializable()
class PostCommentsResponse {
  const PostCommentsResponse({
    required this.comments,
  });

  final List<CommentVM> comments;

  factory PostCommentsResponse.fromJson(JsonMap json) =>
      _$PostCommentsResponseFromJson(json);

  JsonMap toJson() => _$PostCommentsResponseToJson(this);
}
