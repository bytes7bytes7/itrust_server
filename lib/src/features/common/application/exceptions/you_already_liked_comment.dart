import 'detailed_exception.dart';

class YouAlreadyLikedComment extends DetailedException {
  const YouAlreadyLikedComment()
      : super.conflict(
          code: 'comment.alreadyLiked',
          description: 'You have already liked this comment.',
        );
}
