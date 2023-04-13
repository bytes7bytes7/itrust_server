import 'detailed_exception.dart';

class YouAlreadyLikedPost extends DetailedException {
  const YouAlreadyLikedPost()
      : super.conflict(
          code: 'post.alreadyLiked',
          description: 'You have already liked this post.',
        );
}
