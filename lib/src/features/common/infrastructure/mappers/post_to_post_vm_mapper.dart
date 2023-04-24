import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/post_vm/post_vm.dart';
import '../../domain/domain.dart';

class PostToPostVMMapper extends TwoSourcesMapper<Post, ToPostVM, PostVM> {
  PostToPostVMMapper(super.input);

  @override
  PostVM map() {
    return PostVM(
      id: _post.id,
      authorID: _post.authorID,
      createdAt: _post.createdAt,
      text: _post.text,
      media: _dto.media,
      likedByMe: _dto.likedByMe,
      likesAmount: _dto.likesAmount,
      commentsAmount: _dto.commentsAmount,
      tags: _post.tags,
    );
  }

  Post get _post => source1;

  ToPostVM get _dto => source2;
}
