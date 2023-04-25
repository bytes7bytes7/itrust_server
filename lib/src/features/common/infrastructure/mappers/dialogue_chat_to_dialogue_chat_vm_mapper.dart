import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/chat_vm/chat_vm.dart';
import '../../domain/domain.dart';

class DialogueChatToDialogueChatVMMapper
    extends TwoSourcesMapper<DialogueChat, ToChatVM, DialogueChatVM> {
  DialogueChatToDialogueChatVMMapper(super.input);

  @override
  DialogueChatVM map() {
    return DialogueChatVM(
      id: _chat.id,
      firstUserID: _chat.firstUserID,
      secondUserID: _chat.secondUserID,
      unreadAmount: _dto.unreadAmount,
      lastMessageID: _dto.lastMessageID,
    );
  }

  DialogueChat get _chat => source1;

  ToChatVM get _dto => source2;
}
