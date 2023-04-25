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
      ..register(MapperMeta.one(ChatResultToChatResponseMapper.new))
      ..register(MapperMeta.two(ListenChatsRequestToListenChatsQueryMapper.new))
      ..register(
        MapperMeta.one(
          (input) => ChatEventResultToChatEventResponseMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          CreatedChatEventResultToCreatedChatEventResponseMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(
          DeletedChatEventResultToDeletedChatEventResponseMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(
          UpdatedChatEventResultToUpdatedChatEventResponseMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(
          OnlineChangedChatEventResultToOnlineChangedChatEventResponseMapper
              .new,
        ),
      );
  }
}
