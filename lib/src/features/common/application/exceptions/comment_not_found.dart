import 'detailed_exception.dart';

class CommentNotFound extends DetailedException {
  const CommentNotFound()
      : super.notFound(
          code: 'comment.notFound',
          description: 'Comment not found.',
        );
}
