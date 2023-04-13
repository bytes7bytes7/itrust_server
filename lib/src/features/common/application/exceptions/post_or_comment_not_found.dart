import 'detailed_exception.dart';

class PostOrCommentNotFound extends DetailedException {
  const PostOrCommentNotFound()
      : super.notFound(
          code: 'postOrComment.notFound',
          description: 'Post or comment not found.',
        );
}
