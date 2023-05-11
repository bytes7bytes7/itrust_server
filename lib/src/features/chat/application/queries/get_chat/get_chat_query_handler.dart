import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/application/mapper_dto/to_chat_vm.dart';
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
  FutureOr<Either<List<DetailedException>, ChatResult>> handle(
    GetChatQuery request,
  ) async {
    final chat = await _chatRepository.getChatByID(id: request.chatID);

    if (chat == null) {
      return left(
        [const ChatNotFound()],
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
