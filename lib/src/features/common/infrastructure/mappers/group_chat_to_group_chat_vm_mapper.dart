import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/chat_vm/chat_vm.dart';
import '../../domain/domain.dart';

class GroupChatToGroupChatVMMapper
    extends TwoSourcesMapper<GroupChat, ToChatVM, GroupChatVM> {
  GroupChatToGroupChatVMMapper(super.input);

  @override
  GroupChatVM map() {
    return GroupChatVM(
      id: _chat.id,
      createdAt: _chat.createdAt,
      ownerID: _chat.ownerID,
      participantsAmount: _dto.participantsAmount,
      title: _chat.title,
      unreadAmount: _dto.unreadAmount,
      lastMessageID: _dto.lastMessageID,
      pic: _dto.media,
    );
  }

  GroupChat get _chat => source1;

  ToChatVM get _dto => source2;
}
