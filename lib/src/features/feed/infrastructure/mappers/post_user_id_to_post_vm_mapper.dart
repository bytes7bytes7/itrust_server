import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';

class PostUserIDToPostVMMapper extends TwoSourcesMapper<Post, UserID, PostVM> {
  PostUserIDToPostVMMapper(super.input);

  @override
  PostVM map() {
    return PostVM(
      id: _post.id,
      authorID: _post.authorID,
      createdAt: _post.createdAt,
      text: _post.text,
      mediaUrls: _post.mediaUrls,
      likedByMe: _post.likedBy.contains(_userID),
      likesAmount: _post.likedBy.length,
      commentsAmount: _post.comments.length,
      tags: _post.tags,
    );
  }

  Post get _post => source1;

  UserID get _userID => source2;
}
