import 'package:mapster/mapster.dart';

import '../../application/view_models/media_vm/media_vm.dart';
import '../../application/view_models/post_vm/post_vm.dart';
import '../../domain/domain.dart';

class PostToPostVMMapper
    extends ThreeSourcesMapper<Post, UserID, List<MediaVM>, PostVM> {
  PostToPostVMMapper(super.input);

  @override
  PostVM map() {
    return PostVM(
      id: _post.id,
      authorID: _post.authorID,
      createdAt: _post.createdAt,
      text: _post.text,
      media: _media,
      likedByMe: _post.likedByIDs.contains(_userID),
      likesAmount: _post.likedByIDs.length,
      commentsAmount: _post.commentIDs.length,
      tags: _post.tags,
    );
  }

  Post get _post => source1;

  UserID get _userID => source2;

  List<MediaVM> get _media => source3;
}
