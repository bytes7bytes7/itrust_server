import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/comment_vm/comment_vm.dart';
import '../../domain/entities/entities.dart';

class CommentToCommentVMMapper
    extends TwoSourcesMapper<Comment, ToCommentVM, CommentVM> {
  CommentToCommentVMMapper(super.input);

  @override
  CommentVM map() {
    return CommentVM(
      id: _comment.id,
      authorID: _comment.authorID,
      postID: _comment.postID,
      createdAt: _comment.createdAt,
      text: _comment.text,
      likedByMe: _dto.likedByMe,
      likesAmount: _dto.likesAmount,
      repliesAmount: _dto.repliesAmount,
      replyToID: _comment.replyToID,
      modifiedAt: _comment.modifiedAt,
    );
  }

  Comment get _comment => source1;

  ToCommentVM get _dto => source2;
}
