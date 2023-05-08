import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../features/common/application/dto/dto.dart';
import '../../features/common/application/providers/date_time_provider.dart';
import '../../features/common/domain/domain.dart';
import '../interfaces/chat_repository.dart';
import '../interfaces/media_repository.dart';

@dev
@Singleton(as: ChatRepository)
class DevChatRepository implements ChatRepository {
  DevChatRepository({
    required MediaRepository mediaRepository,
    required DateTimeProvider dateTimeProvider,
  })  : _mediaRepository = mediaRepository,
        _dateTimeProvider = dateTimeProvider;

  final MediaRepository _mediaRepository;
  final DateTimeProvider _dateTimeProvider;

  final _chatController = BehaviorSubject<ChatEvent>();

  final _chats = HashMap<ChatID, Chat?>();
  final _images = HashMap<ChatID, MediaID>();
  final _usersChatIDs = HashMap<UserID, List<ChatID>>();
  final _groupParticipants = HashMap<ChatID, List<UserID>>();
  final _chatMessageIDs = HashMap<ChatID, List<MessageID>>();
  final _messages = HashMap<MessageID, Message?>();
  final _userLastReadMessage = HashMap<ChatID, HashMap<UserID, MessageID>>();

  @override
  Future<void> dispose() async {
    await _chatController.close();
  }

  @override
  Stream<ChatEvent> listenChatsForUser({required UserID userID}) {
    return _chatController.where((e) {
      final chats = _usersChatIDs[userID] ?? [];

      return chats.contains(e.chatID);
    });
  }

  @override
  Future<MonologueChat> createMonologue({
    required UserID userID,
    required String title,
    NewMedia? image,
    String? iconName,
  }) async {
    late ChatID id;
    do {
      id = ChatID.generateMonologue();
    } while (_chats.keys.contains(id));

    // book place
    _chats[id] = null;

    Media? media;
    if (image != null) {
      media = await _mediaRepository.add(image);
      _images[id] = media.id;
    }

    final chat = MonologueChat(
      id: id,
      ownerID: userID,
      title: title,
      iconName: iconName,
      picID: media?.id,
    );

    _chats[id] = chat;

    final chatIDs = List.of(_usersChatIDs[userID] ?? <ChatID>[])..add(id);
    _usersChatIDs[userID] = chatIDs;

    _chatController.add(CreatedChatEvent(chatID: id, chat: chat));

    return chat;
  }

  @override
  Future<DialogueChat> createDialogue({
    required UserID firstUserID,
    required UserID secondUserID,
  }) async {
    late ChatID id;
    do {
      id = ChatID.generateDialogue();
    } while (_chats.keys.contains(id));

    // book place
    _chats[id] = null;

    final chat = DialogueChat(
      id: id,
      firstUserID: firstUserID,
      secondUserID: secondUserID,
    );

    _chats[id] = chat;

    final firstChatIDs = List.of(_usersChatIDs[firstUserID] ?? <ChatID>[])
      ..add(id);
    _usersChatIDs[firstUserID] = firstChatIDs;

    final secondChatIDs = List.of(_usersChatIDs[secondUserID] ?? <ChatID>[])
      ..add(id);
    _usersChatIDs[secondUserID] = secondChatIDs;

    _chatController.add(CreatedChatEvent(chatID: id, chat: chat));

    return chat;
  }

  @override
  Future<GroupChat> createGroup({
    required UserID userID,
    required String title,
    required List<UserID> guestIDs,
    NewMedia? image,
  }) async {
    late ChatID id;
    do {
      id = ChatID.generateGroup();
    } while (_chats.keys.contains(id));

    // book place
    _chats[id] = null;

    Media? media;
    if (image != null) {
      media = await _mediaRepository.add(image);
      _images[id] = media.id;
    }

    final chat = GroupChat(
      id: id,
      ownerID: userID,
      title: title,
      picID: media?.id,
    );

    _chats[id] = chat;

    final chatIDs = List.of(_usersChatIDs[userID] ?? <ChatID>[])..add(id);
    _usersChatIDs[userID] = chatIDs;

    for (final userID in guestIDs) {
      final chatIDs = List.of(_usersChatIDs[userID] ?? <ChatID>[])..add(id);
      _usersChatIDs[userID] = chatIDs;
    }

    _groupParticipants[id] = [userID, ...guestIDs];

    _chatController.add(CreatedChatEvent(chatID: id, chat: chat));

    return chat;
  }

  @override
  Future<void> update({required Chat chat}) async {
    final oldChat = _chats[chat.id];

    if (oldChat == null) {
      throw Exception('Chat not found');
    }

    _chats[chat.id] = chat;

    _chatController.add(UpdatedChatEvent(chatID: chat.id, chat: chat));
  }

  @override
  Future<Chat?> getChatByID({required ChatID id}) async {
    return _chats[id];
  }

  @override
  Future<List<Chat>> getChatsByFilter({
    required UserID userID,
    required int limit,
    ChatID? startAfter,
  }) async {
    // TODO: change (base on time of the last msg)
    final result = <Chat>[];

    var reachStartAfter = startAfter == null;

    final chatIDs = _usersChatIDs[userID] ?? [];

    for (final id in chatIDs) {
      if (reachStartAfter) {
        final chat = _chats[id];

        if (chat == null) {
          continue;
        }

        result.add(chat);
      } else if (id == startAfter) {
        reachStartAfter = true;
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }

  @override
  Future<int> getChatParticipantsAmount({required ChatID id}) async {
    final chat = _chats[id];

    if (chat == null) {
      throw Exception('Chat not found');
    }

    if (id.isMonologueID) {
      return 1;
    }

    if (id.isDialogueID) {
      return 2;
    }

    final users = _groupParticipants[id] ?? [];

    return users.length;
  }

  @override
  Future<MessageID?> getChatLastMessageID({required ChatID id}) async {
    final chat = _chats[id];

    if (chat == null) {
      throw Exception('Chat not found');
    }

    final messageIDs = _chatMessageIDs[id] ?? [];

    return messageIDs.lastOrNull;
  }

  @override
  Future<int> getChatUnreadMessagesAmount({
    required ChatID chatID,
    required UserID userID,
  }) async {
    final chat = _chats[chatID];

    if (chat == null) {
      throw Exception('Chat not found');
    }

    final lastMessagesForUsers = _userLastReadMessage[chatID] ?? HashMap();
    final lastMessageID = lastMessagesForUsers[userID];

    final messageIDs = _chatMessageIDs[chatID] ?? [];

    final int index;
    if (lastMessageID != null) {
      final i = messageIDs.indexOf(lastMessageID);
      index = i != -1 ? i : 0;
    } else {
      index = 0;
    }

    return messageIDs.length - index;
  }

  @override
  Future<bool> isMessageReadByUser({
    required ChatID chatID,
    required MessageID messageID,
    required UserID userID,
  }) async {
    final currentMessage = _messages[messageID];

    if (currentMessage == null) {
      throw Exception('Message not found');
    }

    if (currentMessage.chatID != chatID) {
      throw Exception('Message belongs to another chat');
    }

    final lastMessagesForUsers = _userLastReadMessage[chatID] ?? HashMap();

    final lastMessageID = lastMessagesForUsers[userID];

    if (lastMessageID == null) {
      return false;
    }

    final lastMessage = _messages[lastMessageID];

    if (lastMessage == null) {
      throw Exception('Message not found');
    }

    return lastMessage.sentAt.isAfter(currentMessage.sentAt);
  }

  @override
  Future<Message?> getMessageByID({required MessageID id}) async {
    return _messages[id];
  }

  @override
  Future<List<Message>> getMessagesByFilter({
    required UserID userID,
    required ChatID chatID,
    required int limit,
    MessageID? startAfter,
  }) async {
    final result = <Message>[];

    var reachStartAfter = startAfter == null;

    final chat = _chats[chatID];

    if (chat == null) {
      throw Exception('Chat not found');
    }

    final messageIDs = _chatMessageIDs[chatID] ?? [];

    for (final id in messageIDs) {
      if (reachStartAfter) {
        final message = _messages[id];

        if (message == null) {
          continue;
        }

        result.add(message);
      } else if (id == startAfter) {
        reachStartAfter = true;
      }

      if (result.length == limit) {
        break;
      }
    }

    return result;
  }

  @override
  Future<InfoMessage> sendInfoMessage({
    required ChatID chatID,
    required String markUp,
    required Map<String, String> markUpData,
    Duration? willBeBurntAfter,
  }) async {
    final chat = _chats[chatID];

    if (chat == null) {
      throw Exception('Chat not found');
    }

    late MessageID id;
    do {
      id = MessageID.generate();
    } while (_messages.keys.contains(id));

    // book place
    _messages[id] = null;

    final sentAt = _dateTimeProvider.nowUtc();
    DateTime? willBeBurntAt;
    if (willBeBurntAfter != null) {
      willBeBurntAt = sentAt.add(willBeBurntAfter);
    }

    final message = InfoMessage(
      id: id,
      chatID: chatID,
      sentAt: sentAt,
      markUp: markUp,
      markUpData: markUpData,
      willBeBurntAt: willBeBurntAt,
    );

    _messages[id] = message;

    final messageIDs = List.of(_chatMessageIDs[chatID] ?? <MessageID>[])
      ..insert(0, id);
    _chatMessageIDs[chatID] = messageIDs;

    _chatController.add(UpdatedChatEvent(chatID: chatID, chat: chat));

    return message;
  }

  @override
  Future<UserMessage> sendUserMessage({
    required ChatID chatID,
    required UserID userID,
    required String text,
    List<NewMedia> media = const [],
    Duration? willBeBurntAfter,
  }) async {
    final chat = _chats[chatID];

    if (chat == null) {
      throw Exception('Chat not found');
    }

    late MessageID id;
    do {
      id = MessageID.generate();
    } while (_messages.keys.contains(id));

    // book place
    _messages[id] = null;

    // message is read automatically by sender
    final lastMessagesForUsers = (_userLastReadMessage[chatID] ?? HashMap())
      ..[userID] = id;
    _userLastReadMessage[chatID] = lastMessagesForUsers;

    final sentAt = _dateTimeProvider.nowUtc();
    DateTime? willBeBurntAt;
    if (willBeBurntAfter != null) {
      willBeBurntAt = sentAt.add(willBeBurntAfter);
    }

    final mediaIDs = <MediaID>[];
    for (final m in media) {
      mediaIDs.add((await _mediaRepository.add(m)).id);
    }

    final message = UserMessage(
      id: id,
      chatID: chatID,
      senderID: userID,
      sentAt: sentAt,
      text: text,
      mediaIDs: mediaIDs,
      willBeBurntAt: willBeBurntAt,
    );

    _messages[id] = message;

    final messageIDs = List.of(_chatMessageIDs[chatID] ?? <MessageID>[])
      ..insert(0, id);
    _chatMessageIDs[chatID] = messageIDs;

    _chatController.add(UpdatedChatEvent(chatID: chatID, chat: chat));

    return message;
  }
}
