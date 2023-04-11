import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/application/providers/date_time_provider.dart';
import '../../features/common/domain/value_objects/user_id/user_id.dart';
import '../../features/feed/application/dto/dto.dart';
import '../../features/feed/domain/domain.dart';
import '../interfaces/media_repository.dart';
import '../interfaces/post_repository.dart';

@test
@Singleton(as: PostRepository)
class TestPostRepository implements PostRepository {
  TestPostRepository({
    required DateTimeProvider dateTimeProvider,
    required MediaRepository mediaRepository,
  })  : _dateTimeProvider = dateTimeProvider,
        _mediaRepository = mediaRepository;

  // Key's type is `Post?` to be able to book ID for new Post
  final _storage = HashMap<PostID, Post?>();

  final DateTimeProvider _dateTimeProvider;
  final MediaRepository _mediaRepository;

  @override
  Future<Post> create({
    required NewPost newPost,
    required UserID authorID,
  }) async {
    late PostID id;
    do {
      id = PostID.generate();
    } while (_storage.keys.contains(id));

    // book ID
    _storage[id] = null;

    final mediaIDs = <MediaID>[];

    for (final newMedia in newPost.media) {
      final media = await _mediaRepository.add(newMedia);

      mediaIDs.add(media.id);
    }

    final post = Post(
      id: id,
      authorID: authorID,
      text: newPost.text,
      createdAt: _dateTimeProvider.nowUtc(),
      commentIDs: const [],
      likedByIDs: const [],
      mediaIDs: mediaIDs,
      tags: newPost.tags,
    );

    _storage[id] = post;

    return post;
  }

  @override
  Future<void> update({required Post newPost}) async {
    _storage[newPost.id] = newPost;
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
      // booked place
      if (post == null) {
        continue;
      }

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
