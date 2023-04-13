import '../../../common/application/exceptions/detailed_exception.dart';

class YouNotLikedPostYet extends DetailedException {
  const YouNotLikedPostYet()
      : super.conflict(
          code: 'post.notLikedYet',
          description: 'You have not liked this post yet.',
        );
}
