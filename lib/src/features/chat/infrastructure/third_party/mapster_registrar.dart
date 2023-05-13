import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class ChatMapsterRegistrar {
  const ChatMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(MapperMeta.two(GetChatsRequestToGetChatsQueryMapper.new))
      ..register(MapperMeta.one(ChatsResultToChatsResponseMapper.new))
      ..register(
        MapperMeta.two(
          CreateMonologueChatRequestToCreateMonologueChatCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          CreateGroupChatRequestToCreateGroupChatCommandMapper.new,
        ),
      )
      ..register(MapperMeta.one(ChatResultToChatResponseMapper.new))
      ..register(
        MapperMeta.three(ListenChatsRequestToListenChatsQueryMapper.new),
      )
      ..register(MapperMeta.one(ChatEventResultToChatEventResponseMapper.new))
      ..register(
        MapperMeta.two(SendMessageRequestToSendMessageCommandMapper.new),
      )
      ..register(MapperMeta.one(MessageResultToMessageResponseMapper.new))
      ..register(MapperMeta.two(GetMessagesRequestToGetMessagesQueryMapper.new))
      ..register(MapperMeta.one(MessagesResultToMessagesResponseMapper.new))
      ..register(
        MapperMeta.three(ListenMessagesRequestToListenMessageQueryMapper.new),
      )
      ..register(
        MapperMeta.one(MessageEventResultToMessageEventResponseMapper.new),
      )
      ..register(
        MapperMeta.two(GetChatRequestToGetChatQueryMapper.new),
      )
      ..register(
        MapperMeta.two(GetMessageRequestToGetMessageQueryMapper.new),
      );
  }
}
