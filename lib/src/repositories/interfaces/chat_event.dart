part of 'chat_repository.dart';

abstract class ChatEvent {
  const ChatEvent({
    required this.chatID,
  });

  final ChatID chatID;
}

class CreatedChatEvent extends ChatEvent {
  const CreatedChatEvent({
    required super.chatID,
    required this.chat,
  });

  final Chat chat;
}

class DeletedChatEvent extends ChatEvent {
  const DeletedChatEvent({
    required super.chatID,
  });
}

class UpdatedChatEvent extends ChatEvent {
  const UpdatedChatEvent({
    required super.chatID,
    required this.chat,
  });

  final Chat chat;
}
