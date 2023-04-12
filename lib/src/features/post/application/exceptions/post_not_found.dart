import '../../../common/application/exceptions/detailed_exception.dart';

class PostNotFound extends DetailedException {
  const PostNotFound()
      : super.notFound(
          code: 'post.notFound',
          description: 'Post not found.',
        );
}
