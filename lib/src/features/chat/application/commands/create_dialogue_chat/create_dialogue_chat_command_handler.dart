import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_chat_vm.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'create_dialogue_chat_command.dart';

@singleton
class CreateDialogueChatCommandHandler extends RequestHandler<
    CreateDialogueChatCommand, Either<List<DetailedException>, ChatResult>> {
  const CreateDialogueChatCommandHandler({
    required ChatRepository chatRepository,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _chatRepository = chatRepository,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final ChatRepository _chatRepository;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, ChatResult>> handle(
    CreateDialogueChatCommand request,
  ) async {
    if (request.userID == request.partnerID) {
      return left(
        [const CanNotCreateDialogueWithYourself()],
      );
    }

    final userExists =
        await _endUserRepository.getByID(id: request.partnerID) != null;

    if (!userExists) {
      return left(
        [const UserNotFound()],
      );
    }

    final alreadyCreatedChat = await _chatRepository.getDialogueForUsers(
      firstUserID: request.userID,
      secondUserID: request.partnerID,
    );

    if (alreadyCreatedChat != null) {
      final unreadAmount = await _chatRepository.getChatUnreadMessagesAmount(
        chatID: alreadyCreatedChat.id,
        userID: request.userID,
      );

      final lastMessageID =
          await _chatRepository.getChatLastMessageID(id: alreadyCreatedChat.id);

      return right(
        ChatResult(
          chat: _mapster.map2(
            alreadyCreatedChat,
            ToChatVM(
              participantsAmount: 2,
              unreadAmount: unreadAmount,
              lastMessageID: lastMessageID,
              media: null,
              partnerID: alreadyCreatedChat.firstUserID == request.userID
                ? alreadyCreatedChat.secondUserID
                : alreadyCreatedChat.firstUserID,
            ),
            To<DialogueChatVM>(),
          ),
        ),
      );
    }

    final chat = await _chatRepository.createDialogue(
      firstUserID: request.userID,
      secondUserID: request.partnerID,
    );

    return right(
      ChatResult(
        chat: _mapster.map2(
          chat,
          ToChatVM(
            participantsAmount: 2,
            unreadAmount: 0,
            lastMessageID: null,
            media: null,
            partnerID: chat.firstUserID == request.userID
              ? chat.secondUserID
              : chat.firstUserID,
          ),
          To<DialogueChatVM>(),
        ),
      ),
    );
  }
}
