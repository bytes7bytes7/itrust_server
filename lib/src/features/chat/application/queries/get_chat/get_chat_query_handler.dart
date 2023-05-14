import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/mapper_dto/to_chat_vm.dart';
import '../../../../common/application/providers/date_time_provider.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'get_chat_query.dart';

@singleton
class GetChatQueryHandler extends RequestHandler<GetChatQuery,
    Either<List<DetailedException>, ChatResult>> {
  const GetChatQueryHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required DateTimeProvider dateTimeProvider,
    required ChatRepository chatRepository,
    required MediaRepository mediaRepository,
    required Mapster mapster,
  })  : _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository,
        _dateTimeProvider = dateTimeProvider,
        _chatRepository = chatRepository,
        _mediaRepository = mediaRepository,
        _mapster = mapster;

  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;
  final DateTimeProvider _dateTimeProvider;
  final ChatRepository _chatRepository;
  final MediaRepository _mediaRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, ChatResult>> handle(
    GetChatQuery request,
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

      final tempDialogueChat = DialogueChat(
        id: request.chatID,
        createdAt: _dateTimeProvider.nowUtc(),
        firstUserID: userIDs[0],
        secondUserID: userIDs[1],
      );

      return right(
        ChatResult(
          chat: _mapster.map2(
            tempDialogueChat,
            ToChatVM(
              participantsAmount: 2,
              unreadAmount: 0,
              lastMessageID: null,
              media: null,
              partnerID: tempDialogueChat.firstUserID == request.userID
                ? tempDialogueChat.secondUserID
                : tempDialogueChat.firstUserID,
            ),
            To<DialogueChatVM>(),
          ),
        ),
      );
    }

    final participantsAmount =
        await _chatRepository.getChatParticipantsAmount(id: chat.id);
    final unreadAmount = await _chatRepository.getChatUnreadMessagesAmount(
      chatID: chat.id,
      userID: request.userID,
    );
    final lastMessageID =
        await _chatRepository.getChatLastMessageID(id: chat.id);

    final picID = chat.map(
      monologue: (v) => v.picID,
      dialogue: (_) => null,
      group: (v) => v.picID,
    );

    Media? media;
    if (picID != null) {
      media = await _mediaRepository.get(picID);
    }

    return right(
      ChatResult(
        chat: _mapster.map2(
          chat,
          ToChatVM(
            participantsAmount: participantsAmount,
            unreadAmount: unreadAmount,
            lastMessageID: lastMessageID,
            media: media != null ? _mapster.map1(media, To<MediaVM>()) : null,
            partnerID: chat.map(
              monologue: (_) => null,
              dialogue: (e) => e.firstUserID == request.userID
                  ? e.secondUserID
                  : e.firstUserID,
              group: (_) => null,
            ),
          ),
          To<ChatVM>(),
        ),
      ),
    );
  }
}
