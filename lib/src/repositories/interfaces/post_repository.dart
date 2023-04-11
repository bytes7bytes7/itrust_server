import '../../features/common/domain/domain.dart';
import '../../features/feed/domain/domain.dart';

abstract class PostRepository {
  Future<void> addOrUpdate({required Post post});

  Future<Post?> getByID({required PostID id});

  Future<List<Post>> getByFilter({
    required int limit,
    List<UserID> byUsers = const [],
    bool byAllUsers = false,
    PostID? startAfter,
  });
}
