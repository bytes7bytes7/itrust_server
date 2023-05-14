import 'dart:async';

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
import 'send_message_command.dart';

@singleton
class SendMessageCommandHandler extends RequestHandler<SendMessageCommand,
    Either<List<DetailedException>, MessageResult>> {
  const SendMessageCommandHandler({
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
    required ChatRepository chatRepository,
    required MediaRepository mediaRepository,
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
  FutureOr<Either<List<DetailedException>, MessageResult>> handle(
    SendMessageCommand request,
  ) async {
    if (request.chatID.isDialogueID) {
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
    } else {
      final chat = await _chatRepository.getChatByID(id: request.chatID);

      if (chat == null) {
        return left(
          [const ChatNotFound()],
        );
      }
    }

    final willBeBurntAfterSec = request.willBeBurntAfterSec;

    final message = await _chatRepository.sendUserMessage(
      chatID: request.chatID,
      userID: request.userID,
      text: request.text,
      media: request.media,
      willBeBurntAfter: willBeBurntAfterSec != null
          ? Duration(seconds: willBeBurntAfterSec)
          : null,
    );

    final isReadByMe = await _chatRepository.isMessageReadByUser(
      chatID: request.chatID,
      messageID: message.id,
      userID: request.userID,
    );

    final mediaList = <MediaVM>[];
    for (final id in message.mediaIDs) {
      final media = await _mediaRepository.get(id);

      if (media != null) {
        mediaList.add(_mapster.map1(media, To<MediaVM>()));
      }
    }

    return right(
      MessageResult(
        message: _mapster.map2(
          message,
          ToMessageVM(
            isReadByMe: isReadByMe,
            media: mediaList,
          ),
          To<UserMessageVM>(),
        ),
      ),
    );
  }
}
