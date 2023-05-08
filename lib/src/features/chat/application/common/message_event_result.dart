import '../../../common/application/view_models/message_vm/message_vm.dart';
import '../../../common/domain/domain.dart';

class MessageEventResult {
  const MessageEventResult({
    this.created = const [],
    this.deleted = const [],
    this.updated = const [],
  });

  final List<MessageVM> created;
  final List<MessageID> deleted;
  final List<MessageVM> updated;
}
