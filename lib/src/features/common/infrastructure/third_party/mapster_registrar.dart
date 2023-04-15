import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class CommonMapsterRegistrar {
  const CommonMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(MapperMeta.three(PostToPostVMMapper.new))
      ..register(MapperMeta.one(MediaToMediaVMMapper.new))
      ..register(MapperMeta.two(CommentToCommentVMMapper.new))
      ..register(MapperMeta.two(UserToUserVMMapper.new))
      ..register(MapperMeta.two(EndUserToEndUserVMMapper.new))
      ..register(MapperMeta.one(StaffUserToStaffUserVMMapper.new))
      ..register(MapperMeta.one(PostsResultToPostsResponseMapper.new));
  }
}
