import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/domain.dart';

part 'comment_vm.freezed.dart';

part 'comment_vm.g.dart';

@freezed
class CommentVM with _$CommentVM {
  const factory CommentVM({
    required CommentID id,
    required UserID authorID,
    required PostID postID,
    required DateTime createdAt,
    required String text,
    required bool likedByMe,
    required int likesAmount,
    required int repliesAmount,
    CommentID? replyToID,
    DateTime? modifiedAt,
  }) = _CommentVM;

  factory CommentVM.fromJson(JsonMap json) => _$CommentVMFromJson(json);
}
