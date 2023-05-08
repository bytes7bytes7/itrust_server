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
      ..register(MapperMeta.two(PostToPostVMMapper.new))
      ..register(MapperMeta.one(MediaToMediaVMMapper.new))
      ..register(MapperMeta.two(CommentToCommentVMMapper.new))
      ..register(
        MapperMeta.two(
          (input) => UserToUserVMMapper(input, mapster: _mapster),
        ),
      )
      ..register(MapperMeta.two(EndUserToEndUserVMMapper.new))
      ..register(MapperMeta.two(StaffUserToStaffUserVMMapper.new))
      ..register(MapperMeta.one(PostsResultToPostsResponseMapper.new))
      ..register(
        MapperMeta.two(
          (input) => ChatToChatVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(MapperMeta.two(MonologueChatToMonologueChatVMMapper.new))
      ..register(MapperMeta.two(DialogueChatToDialogueChatVMMapper.new))
      ..register(MapperMeta.two(GroupChatToGroupChatVMMapper.new))
      ..register(
        MapperMeta.two(
          (input) => MessageToMessageVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(MapperMeta.two(InfoMessageToInfoMessageVMMapper.new))
      ..register(MapperMeta.two(UserMessageToUserMessageVMMapper.new));
  }
}
