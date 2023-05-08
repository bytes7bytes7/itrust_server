import '../../../common/application/view_models/chat_vm/chat_vm.dart';
import '../../../common/domain/domain.dart';

class ChatEventResult {
  const ChatEventResult({
    this.created = const [],
    this.deleted = const [],
    this.updated = const [],
  });

  final List<ChatVM> created;
  final List<ChatID> deleted;
  final List<ChatVM> updated;
}
