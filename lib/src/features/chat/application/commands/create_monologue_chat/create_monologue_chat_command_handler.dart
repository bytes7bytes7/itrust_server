import 'dart:async';

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
import 'create_monologue_chat_command.dart';

@singleton
class CreateMonologueChatCommandHandler extends RequestHandler<
    CreateMonologueChatCommand, Either<List<DetailedException>, ChatResult>> {
  const CreateMonologueChatCommandHandler({
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
    CreateMonologueChatCommand request,
  ) async {
    final chat = await _chatRepository.createMonologue(
      userID: request.userID,
      title: request.title,
      iconName: request.iconName,
      image: request.image,
    );

    final picID = chat.picID;
    Media? media;
    if (picID != null) {
      media = await _mediaRepository.get(picID);
    }

    return right(
      ChatResult(
        chat: _mapster.map2(
          chat,
          ToChatVM(
            participantsAmount: 1,
            unreadAmount: 0,
            lastMessageID: null,
            media: media != null ? _mapster.map1(media, To<MediaVM>()) : null,
          ),
          To<MonologueChatVM>(),
        ),
      ),
    );
  }
}
