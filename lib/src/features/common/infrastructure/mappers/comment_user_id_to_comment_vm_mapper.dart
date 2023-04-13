import 'package:mapster/mapster.dart';

import '../../application/view_models/comment_vm/comment_vm.dart';
import '../../domain/entities/entities.dart';
import '../../domain/value_objects/value_objects.dart';

class CommentUserIDToCommentVMMapper
    extends TwoSourcesMapper<Comment, UserID, CommentVM> {
  CommentUserIDToCommentVMMapper(super.input);

  @override
  CommentVM map() {
    return CommentVM(
      id: _comment.id,
      authorID: _comment.authorID,
      postID: _comment.postID,
      createdAt: _comment.createdAt,
      text: _comment.text,
      likedByMe: _comment.likedByIDs.contains(_myID),
      likesAmount: _comment.likedByIDs.length,
      repliesAmount: _comment.replyIDs.length,
      replyToID: _comment.replyToID,
      modifiedAt: _comment.modifiedAt,
    );
  }

  Comment get _comment => source1;

  UserID get _myID => source2;
}
