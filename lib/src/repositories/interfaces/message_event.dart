part of 'chat_repository.dart';

abstract class MessageEvent {
  const MessageEvent({
    required this.chatID,
  });

  final ChatID chatID;
}

class CreatedMessageEvent extends MessageEvent {
  const CreatedMessageEvent({
    required super.chatID,
    required this.message,
  });

  final Message message;
}

class DeletedMessageEvent extends MessageEvent {
  const DeletedMessageEvent({
    required super.chatID,
    required this.messageID,
  });

  final MessageID messageID;
}

class UpdatedMessageEvent extends MessageEvent {
  const UpdatedMessageEvent({
    required super.chatID,
    required this.message,
  });

  final Message message;
}
