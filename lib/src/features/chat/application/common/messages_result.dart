import '../../../common/application/view_models/message_vm/message_vm.dart';

class MessagesResult {
  const MessagesResult({
    required this.messages,
  });

  final List<MessageVM> messages;
}
