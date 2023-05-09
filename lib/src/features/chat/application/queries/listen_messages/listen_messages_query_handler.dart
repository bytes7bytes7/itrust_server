import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_message_vm.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/application/view_models/message_vm/message_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import 'listen_messages_query.dart';

const _messageEventMinPeriod = Duration(milliseconds: 200);

@singleton
class ListenMessagesQueryHandler extends StreamRequestHandler<
    ListenMessagesQuery, Either<List<DetailedException>, MessageEventResult>> {
  const ListenMessagesQueryHandler({
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
  Future<Stream<Either<List<DetailedException>, MessageEventResult>>> handle(
    ListenMessagesQuery request,
  ) async {
    final stream = _chatRepository.listenMessagesForUser(
      userID: request.userID,
      chatID: request.chatID,
    );

    return stream
        .bufferTime(_messageEventMinPeriod)
        .asyncMap<List<Either<List<DetailedException>, MessageEventResult>>>(
            (events) async {
          final created = <MessageVM>[];
          final deleted = <MessageID>[];
          final updated = <MessageVM>[];
          final exceptions = <DetailedException>[];

          for (final event in events) {
            if (event is CreatedMessageEvent) {
              final message = event.message;

              final isReadByMe = await _chatRepository.isMessageReadByUser(
                chatID: request.chatID,
                messageID: message.id,
                userID: request.userID,
              );

              final mediaList = <MediaVM>[];
              if (message is UserMessage) {
                for (final id in message.mediaIDs) {
                  final media = await _mediaRepository.get(id);

                  if (media != null) {
                    mediaList.add(_mapster.map1(media, To<MediaVM>()));
                  }
                }
              }

              created.add(
                _mapster.map2(
                  event.message,
                  ToMessageVM(
                    isReadByMe: isReadByMe,
                    media: mediaList,
                  ),
                  To<MessageVM>(),
                ),
              );
            } else if (event is DeletedMessageEvent) {
              deleted.add(event.messageID);
            } else if (event is UpdatedMessageEvent) {
              final message = event.message;

              final isReadByMe = await _chatRepository.isMessageReadByUser(
                chatID: request.chatID,
                messageID: message.id,
                userID: request.userID,
              );

              final mediaList = <MediaVM>[];
              if (message is UserMessage) {
                for (final id in message.mediaIDs) {
                  final media = await _mediaRepository.get(id);

                  if (media != null) {
                    mediaList.add(_mapster.map1(media, To<MediaVM>()));
                  }
                }
              }

              updated.add(
                _mapster.map2(
                  event.message,
                  ToMessageVM(
                    isReadByMe: isReadByMe,
                    media: mediaList,
                  ),
                  To<MessageVM>(),
                ),
              );
            } else {
              exceptions.add(
                DetailedException.unexpected(
                  code: 'messageEvent.unknown',
                  description: 'Unknown message event.',
                ),
              );
            }
          }

          final resultEvents =
              <Either<List<DetailedException>, MessageEventResult>>[];

          if (created.isNotEmpty || deleted.isNotEmpty || updated.isNotEmpty) {
            resultEvents.add(
              right(
                MessageEventResult(
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
