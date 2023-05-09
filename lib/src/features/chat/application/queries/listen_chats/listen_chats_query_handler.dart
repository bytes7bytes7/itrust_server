import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_chat_vm.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import 'listen_chats_query.dart';

const _chatEventMinPeriod = Duration(milliseconds: 200);

@singleton
class ListenChatsQueryHandler extends StreamRequestHandler<ListenChatsQuery,
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
  Future<Stream<Either<List<DetailedException>, ChatEventResult>>> handle(
    ListenChatsQuery request,
  ) async {
    final stream = _chatRepository.listenChatsForUser(userID: request.userID);

    return stream
        .bufferTime(_chatEventMinPeriod)
        .asyncMap<List<Either<List<DetailedException>, ChatEventResult>>>(
            (events) async {
          final created = <ChatVM>[];
          final deleted = <ChatID>[];
          final updated = <ChatVM>[];
          final exceptions = <DetailedException>[];

          for (final event in events) {
            if (event is CreatedChatEvent) {
              final participantsAmount = await _chatRepository
                  .getChatParticipantsAmount(id: event.chatID);
              final unreadAmount =
                  await _chatRepository.getChatUnreadMessagesAmount(
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

              created.add(
                _mapster.map2(
                  event.chat,
                  ToChatVM(
                    participantsAmount: participantsAmount,
                    unreadAmount: unreadAmount,
                    lastMessageID: lastMessageID,
                    media: media != null
                        ? _mapster.map1(media, To<MediaVM>())
                        : null,
                  ),
                  To<ChatVM>(),
                ),
              );
            } else if (event is DeletedChatEvent) {
              deleted.add(event.chatID);
            } else if (event is UpdatedChatEvent) {
              final participantsAmount = await _chatRepository
                  .getChatParticipantsAmount(id: event.chatID);
              final unreadAmount =
                  await _chatRepository.getChatUnreadMessagesAmount(
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

              updated.add(
                _mapster.map2(
                  event.chat,
                  ToChatVM(
                    participantsAmount: participantsAmount,
                    unreadAmount: unreadAmount,
                    lastMessageID: lastMessageID,
                    media: media != null
                        ? _mapster.map1(media, To<MediaVM>())
                        : null,
                  ),
                  To<ChatVM>(),
                ),
              );
            } else {
              exceptions.add(
                DetailedException.unexpected(
                  code: 'chatEvent.unknown',
                  description: 'Unknown chat event.',
                ),
              );
            }
          }

          final resultEvents =
              <Either<List<DetailedException>, ChatEventResult>>[];

          if (created.isNotEmpty || deleted.isNotEmpty || updated.isNotEmpty) {
            resultEvents.add(
              right(
                ChatEventResult(
                  created: created,
                  deleted: deleted,
                  updated: updated,
                ),
              ),
            );
          }

          if (exceptions.isNotEmpty) {
            resultEvents.add(left(exceptions));
          }

          return resultEvents;
        })
        .where((events) => events.isNotEmpty)
        .expand((events) => events);
  }
}
