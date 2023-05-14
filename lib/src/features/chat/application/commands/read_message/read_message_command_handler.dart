import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/mapper_dto.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/application/view_models/message_vm/message_vm.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'read_message_command.dart';

@singleton
class ReadMessageCommandHandler extends RequestHandler<ReadMessageCommand,
    Either<List<DetailedException>, MessageResult>> {
  const ReadMessageCommandHandler({
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
  FutureOr<Either<List<DetailedException>, MessageResult>> handle(
    ReadMessageCommand request,
  ) async {
    final chat = await _chatRepository.getChatByID(id: request.chatID);

    if (chat == null) {
      return left(
        [const ChatNotFound()],
      );
    }

    final message = await _chatRepository.getMessageByID(id: request.messageID);

    if (message == null) {
      return left(
        [const MessageNotFound()],
      );
    }

    final isReadByMe = await _chatRepository.isMessageReadByUser(
      chatID: request.chatID,
      messageID: request.messageID,
      userID: request.userID,
    );

    if (isReadByMe) {
      return left(
        [const MessageAlreadyRead()],
      );
    }

    await _chatRepository.readMessage(
      chatID: request.chatID,
      messageID: request.messageID,
      userID: request.userID,
    );

    final mediaList = <MediaVM>[];
    for (final id in message.map(info: (_) => [], user: (e) => e.mediaIDs)) {
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
            isReadByMe: true,
            media: mediaList,
          ),
          To<MessageVM>(),
        ),
      ),
    );
  }
}
