import '../../../common/application/exceptions/detailed_exception.dart';

class YouNotLikedCommentYet extends DetailedException {
  const YouNotLikedCommentYet()
      : super.conflict(
          code: 'comment.notLikedYet',
          description: 'You have not liked this comment yet.',
        );
}
