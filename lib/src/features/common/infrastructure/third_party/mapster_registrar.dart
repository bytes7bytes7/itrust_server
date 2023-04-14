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
      ..register(MapperMeta.one(UserToUserVMMapper.new))
      ..register(MapperMeta.one(EndUserToEndUserVMMapper.new))
      ..register(MapperMeta.one(StaffUserToStaffUserVMMapper.new));
  }
}
