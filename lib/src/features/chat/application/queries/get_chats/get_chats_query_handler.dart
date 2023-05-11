import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_chat_vm.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import 'get_chats_query.dart';

const _limit = 10;

@singleton
class GetChatsQueryHandler extends RequestHandler<GetChatsQuery,
    Either<List<DetailedException>, ChatsResult>> {
  const GetChatsQueryHandler({
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
  FutureOr<Either<List<DetailedException>, ChatsResult>> handle(
    GetChatsQuery request,
  ) async {
    final chats = await _chatRepository.getChatsByFilter(
      userID: request.userID,
      limit: _limit,
      startAfter: request.lastChatID,
    );

    final participantsAmountMap = HashMap<ChatID, int>();
    final unreadAmountMap = HashMap<ChatID, int>();
    final lastMessageIDMap = HashMap<ChatID, MessageID?>();
    final mediaMap = HashMap<ChatID, Media?>();
    for (final chat in chats) {
      participantsAmountMap[chat.id] =
          await _chatRepository.getChatParticipantsAmount(id: chat.id);
      unreadAmountMap[chat.id] = await _chatRepository
          .getChatUnreadMessagesAmount(chatID: chat.id, userID: request.userID);
      lastMessageIDMap[chat.id] =
          await _chatRepository.getChatLastMessageID(id: chat.id);

      final picID = chat.map(
        monologue: (v) => v.picID,
        dialogue: (_) => null,
        group: (v) => v.picID,
      );

      if (picID != null) {
        mediaMap[chat.id] = await _mediaRepository.get(picID);
      }
    }

    return right(
      ChatsResult(
        chats: chats.map(
          (e) {
            final media = mediaMap[e.id];

            return _mapster.map2(
              e,
              ToChatVM(
                participantsAmount: participantsAmountMap[e.id]!,
                unreadAmount: unreadAmountMap[e.id]!,
                lastMessageID: lastMessageIDMap[e.id],
                media:
                    media != null ? _mapster.map1(media, To<MediaVM>()) : null,
                partnerID: e.map(
                  monologue: (_) => null,
                  dialogue: (e) => e.firstUserID == request.userID
                    ? e.secondUserID
                    : e.firstUserID,
                  group: (_) => null,
                ),
              ),
              To<ChatVM>(),
            );
          },
        ).toList(),
      ),
    );
  }
}
