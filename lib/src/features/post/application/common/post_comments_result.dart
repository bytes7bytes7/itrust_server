import '../../../common/application/view_models/comment_vm/comment_vm.dart';

class PostCommentsResult {
  const PostCommentsResult({
    required this.comments,
  });

  final List<CommentVM> comments;
}
