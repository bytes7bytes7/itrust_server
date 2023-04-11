import '../../features/common/domain/domain.dart';
import '../../features/feed/application/dto/dto.dart';
import '../../features/feed/domain/domain.dart';

abstract class PostRepository {
  Future<Post> create({
    required NewPost newPost,
    required UserID authorID,
  });

  Future<void> update({required Post newPost});

  Future<Post?> getByID({required PostID id});

  Future<List<Post>> getByFilter({
    required int limit,
    List<UserID> byUsers = const [],
    bool byAllUsers = false,
    PostID? startAfter,
  });
}
