import '../../../common/application/view_models/chat_vm/chat_vm.dart';

class ChatsResult {
  const ChatsResult({
    required this.chats,
  });

  final List<ChatVM> chats;
}
