import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_chat_vm.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/domain/entities/entities.dart';
import '../../common/common.dart';
import 'listen_chats_query.dart';

@singleton
class ListenChatsQueryHandler extends RequestHandler<ListenChatsQuery,
    Either<List<DetailedException>, ChatEventResult>> {
  const ListenChatsQueryHandler({
    required ChatRepository chatRepository,
    required MediaRepository mediaRepository,
    required Mapster mapster,
  })  : _chatRepository = chatRepository,
        _mediaRepository = mediaRepository,
        _mapster = mapster;

  final ChatRepository _chatRepository;
  final MediaRepository _mediaRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, ChatEventResult>> handle(
    ListenChatsQuery request,
  ) async {
    final stream = _chatRepository.listenChatsForUser(userID: request.userID);

    final event = await stream.first;

    late ChatEventResult result;
    if (event is CreatedChatEvent) {
      final participantsAmount =
          await _chatRepository.getChatParticipantsAmount(id: event.chatID);
      final unreadAmount = await _chatRepository.getChatUnreadMessagesAmount(
        chatID: event.chatID,
        userID: request.userID,
      );
      final lastMessageID =
          await _chatRepository.getChatLastMessageID(id: event.chatID);

      final picID = event.chat.map(
        monologue: (v) => v.picID,
        dialogue: (_) => null,
        group: (v) => v.picID,
      );

      Media? media;
      if (picID != null) {
        media = await _mediaRepository.get(picID);
      }

      result = CreatedChatEventResult(
        chat: _mapster.map2(
          event.chat,
          ToChatVM(
            participantsAmount: participantsAmount,
            unreadAmount: unreadAmount,
            lastMessageID: lastMessageID,
            media: media != null ? _mapster.map1(media, To<MediaVM>()) : null,
          ),
          To<ChatVM>(),
        ),
      );
    } else if (event is DeletedChatEvent) {
      result = DeletedChatEventResult(chatID: event.chatID);
    } else if (event is UpdatedChatEvent) {
      final participantsAmount =
          await _chatRepository.getChatParticipantsAmount(id: event.chatID);
      final unreadAmount = await _chatRepository.getChatUnreadMessagesAmount(
        chatID: event.chatID,
        userID: request.userID,
      );
      final lastMessageID =
          await _chatRepository.getChatLastMessageID(id: event.chatID);

      final picID = event.chat.map(
        monologue: (v) => v.picID,
        dialogue: (_) => null,
        group: (v) => v.picID,
      );

      Media? media;
      if (picID != null) {
        media = await _mediaRepository.get(picID);
      }

      result = UpdatedChatEventResult(
        chat: _mapster.map2(
          event.chat,
          ToChatVM(
            participantsAmount: participantsAmount,
            unreadAmount: unreadAmount,
            lastMessageID: lastMessageID,
            media: media != null ? _mapster.map1(media, To<MediaVM>()) : null,
          ),
          To<ChatVM>(),
        ),
      );
    } else {
      return left(
        [
          DetailedException.unexpected(
            code: 'chatEvent.unknown',
            description: 'Unknown chat event.',
          )
        ],
      );
    }

    return right(result);
  }
}
