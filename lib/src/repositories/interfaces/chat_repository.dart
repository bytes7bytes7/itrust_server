import '../../features/common/application/dto/dto.dart';
import '../../features/common/domain/domain.dart';

part 'chat_event.dart';

part 'message_event.dart';

abstract class ChatRepository {
  Future<void> dispose();

  Stream<ChatEvent> listenChatsForUser({required UserID userID});

  Stream<MessageEvent> listenMessagesForUser({
    required UserID userID,
    required ChatID chatID,
  });

  Future<MonologueChat> createMonologue({
    required UserID userID,
    required String title,
    NewMedia? image,
    String? iconName,
  });

  Future<DialogueChat?> getDialogueForUsers({
    required UserID firstUserID,
    required UserID secondUserID,
  });

  Future<DialogueChat> createDialogue({
    required UserID firstUserID,
    required UserID secondUserID,
  });

  Future<GroupChat> createGroup({
    required UserID userID,
    required String title,
    required List<UserID> guestIDs,
    NewMedia? image,
  });

  Future<void> update({required Chat chat});

  Future<Chat?> getChatByID({required ChatID id});

  Future<List<Chat>> getChatsByFilter({
    required UserID userID,
    required int limit,
    ChatID? startAfter,
  });

  Future<int> getChatParticipantsAmount({required ChatID id});

  Future<MessageID?> getChatLastMessageID({required ChatID id});

  Future<int> getChatUnreadMessagesAmount({
    required ChatID chatID,
    required UserID userID,
  });

  Future<bool> isMessageReadByUser({
    required ChatID chatID,
    required MessageID messageID,
    required UserID userID,
  });

  Future<Message?> getMessageByID({required MessageID id});

  Future<List<Message>> getMessagesByFilter({
    required UserID userID,
    required ChatID chatID,
    required int limit,
    MessageID? startAfter,
  });

  Future<InfoMessage> sendInfoMessage({
    required ChatID chatID,
    required String markUp,
    required Map<String, String> markUpData,
    Duration? willBeBurntAfter,
  });

  Future<UserMessage> sendUserMessage({
    required ChatID chatID,
    required UserID userID,
    required String text,
    List<NewMedia> media = const [],
    Duration? willBeBurntAfter,
  });
}
