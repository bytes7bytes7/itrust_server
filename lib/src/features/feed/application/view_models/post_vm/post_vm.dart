import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/domain.dart';

part 'post_vm.freezed.dart';

part 'post_vm.g.dart';

@freezed
class PostVM with _$PostVM {
  const factory PostVM({
    required PostID id,
    required UserID authorID,
    required DateTime createdAt,
    required String text,
    required List<String> mediaUrls,
    required bool likedByMe,
    required int likesAmount,
    required int commentsAmount,
    required List<String> tags,
  }) = _PostVM;

  factory PostVM.fromJson(JsonMap json) => _$PostVMFromJson(json);
}
