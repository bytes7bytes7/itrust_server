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
      ..register(
        MapperMeta.three(PostUserIDMediaVMToPostVMMapper.new),
      )
      ..register(
        MapperMeta.one(MediaToMediaVMMapper.new),
      )
      ..register(
        MapperMeta.two(CommentUserIDToCommentVMMapper.new),
      );
  }
}
