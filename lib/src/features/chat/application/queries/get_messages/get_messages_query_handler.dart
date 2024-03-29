import 'dart:async';
import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_message_vm.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/application/view_models/message_vm/message_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'get_messages_query.dart';

const _limit = 15;

@singleton
class GetMessagesQueryHandler extends RequestHandler<GetMessagesQuery,
    Either<List<DetailedException>, MessagesResult>> {
  const GetMessagesQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required MediaRepository mediaRepository,
    required ChatRepository chatRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository,
        _chatRepository = chatRepository,
        _mediaRepository = mediaRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;
  final ChatRepository _chatRepository;
  final MediaRepository _mediaRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, MessagesResult>> handle(
    GetMessagesQuery request,
  ) async {
    final chat = await _chatRepository.getChatByID(id: request.chatID);

    if (chat == null) {
      if (!request.chatID.isDialogueID) {
        return left(
          [const ChatNotFound()],
        );
      }

      final userIDs = request.chatID.tryParseDialogueChatID();

      if (userIDs == null) {
        return left(
          [const ChatNotFound()],
        );
      }

      if (userIDs.length != 2) {
        return left(
          [const ChatNotFound()],
        );
      }

      if (userIDs[0] == userIDs[1]) {
        return left(
          [const ChatNotFound()],
        );
      }

      for (final userID in userIDs) {
        User? user;
        if (userID.isEndID) {
          user = await _endUserRepository.getByID(id: userID);
        } else if (userID.isStaffID) {
          user = await _staffUserRepository.getByID(id: userID);
        }

        if (user == null) {
          return left(
            [const ChatNotFound()],
          );
        }
      }

      return right(
        MessagesResult(
          messages: [],
        ),
      );
    }

    final messages = await _chatRepository.getMessagesByFilter(
      userID: request.userID,
      chatID: request.chatID,
      limit: _limit,
      startAfter: request.lastMessageID,
    );

    final isReadByMeMap = HashMap<MessageID, bool>();
    final mediaMap = HashMap<MessageID, List<MediaVM>>();
    for (final message in messages) {
      final isReadByMe = await _chatRepository.isMessageReadByUser(
        chatID: message.chatID,
        messageID: message.id,
        userID: request.userID,
      );

      isReadByMeMap[message.id] = isReadByMe;

      if (message is UserMessage) {
        final mediaList = <MediaVM>[];
        for (final id in message.mediaIDs) {
          final media = await _mediaRepository.get(id);

          if (media == null) {
            return left(
              [const MediaNotFound()],
            );
          }

          mediaList.add(_mapster.map1(media, To<MediaVM>()));
        }

        mediaMap[message.id] = mediaList;
      }
    }

    return right(
      MessagesResult(
        messages: messages
            .map(
              (e) => _mapster.map2(
                e,
                ToMessageVM(
                  isReadByMe: isReadByMeMap[e.id]!,
                  media: mediaMap[e.id] ?? [],
                ),
                To<MessageVM>(),
              ),
            )
            .toList(),
      ),
    );
  }
}
