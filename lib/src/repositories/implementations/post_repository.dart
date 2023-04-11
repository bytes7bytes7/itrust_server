import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/value_objects/user_id/user_id.dart';
import '../../features/feed/domain/entities/post/post.dart';
import '../../features/feed/domain/value_objects/post_id/post_id.dart';
import '../interfaces/post_repository.dart';

@test
@Singleton(as: PostRepository)
class TestPostRepository implements PostRepository {
  final _storage = HashMap<PostID, Post>();

  @override
  Future<void> addOrUpdate({required Post post}) async {
    _storage[post.id] = post;
  }

  @override
  Future<Post?> getByID({required PostID id}) async {
    return _storage[id];
  }

  @override
  Future<List<Post>> getByFilter({
    required int limit,
    List<UserID> byUsers = const [],
    bool byAllUsers = false,
    PostID? startAfter,
  }) async {
    final result = <Post>[];

    var reachStartAster = startAfter == null;

    for (final post in _storage.values) {
      if (byAllUsers || byUsers.contains(post.authorID)) {
        if (reachStartAster) {
          result.add(post);
        } else {
          if (post.id == startAfter) {
            reachStartAster = true;
          }
        }
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }
}
