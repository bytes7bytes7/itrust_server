import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../../../common/application/mapper_dto/to_chat_vm.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../../common/application/view_models/media_vm/media_vm.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import 'create_group_chat_command.dart';

@singleton
class CreateGroupChatCommandHandler extends RequestHandler<
    CreateGroupChatCommand, Either<List<DetailedException>, ChatResult>> {
  const CreateGroupChatCommandHandler({
    required ChatRepository chatRepository,
    required MediaRepository mediaRepository,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _chatRepository = chatRepository,
        _mediaRepository = mediaRepository,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final ChatRepository _chatRepository;
  final MediaRepository _mediaRepository;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, ChatResult>> handle(
    CreateGroupChatCommand request,
  ) async {
    for (final id in request.guestIDs) {
      final userExists = await _endUserRepository.getByID(id: id) != null;

      if (!userExists) {
        return left(
          [const UserNotFound()],
        );
      }
    }

    final chat = await _chatRepository.createGroup(
      userID: request.userID,
      title: request.title,
      guestIDs: request.guestIDs,
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
            // guests + creator
            participantsAmount: request.guestIDs.length + 1,
            unreadAmount: 0,
            lastMessageID: null,
            media: media != null ? _mapster.map1(media, To<MediaVM>()) : null,
          ),
          To<GroupChatVM>(),
        ),
      ),
    );
  }
}
