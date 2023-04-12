import '../../../common/application/exceptions/detailed_exception.dart';

class YouAlreadyLikedPost extends DetailedException {
  const YouAlreadyLikedPost()
      : super.conflict(
          code: 'post.alreadyLikes',
          description: 'You have already liked this post.',
        );
}
