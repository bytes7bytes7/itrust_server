import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_message_vm.dart';
import '../../../../common/application/view_models/message_vm/message_vm.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'send_message_command.dart';

@singleton
class SendMessageCommandHandler extends RequestHandler<SendMessageCommand,
    Either<List<DetailedException>, MessageResult>> {
  const SendMessageCommandHandler({
    required ChatRepository chatRepository,
    required Mapster mapster,
  })  : _chatRepository = chatRepository,
        _mapster = mapster;

  final ChatRepository _chatRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, MessageResult>> handle(
    SendMessageCommand request,
  ) async {
    final chat = await _chatRepository.getChatByID(id: request.chatID);

    if (chat == null) {
      return left(
        [const ChatNotFound()],
      );
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

    return right(
      MessageResult(
        message: _mapster.map2(
          message,
          ToMessageVM(
            isReadByMe: isReadByMe,
          ),
          To<UserMessageVM>(),
        ),
      ),
    );
  }
}
