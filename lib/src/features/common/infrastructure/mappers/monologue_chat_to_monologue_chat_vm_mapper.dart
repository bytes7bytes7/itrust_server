import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/mapper_dto.dart';
import '../../application/view_models/chat_vm/chat_vm.dart';
import '../../domain/domain.dart';

class MonologueChatToMonologueChatVMMapper
    extends TwoSourcesMapper<MonologueChat, ToChatVM, MonologueChatVM> {
  MonologueChatToMonologueChatVMMapper(super.input);

  @override
  MonologueChatVM map() {
    return MonologueChatVM(
      id: _chat.id,
      title: _chat.title,
      iconName: _chat.iconName,
      lastMessageID: _dto.lastMessageID,
      pic: _dto.media,
    );
  }

  MonologueChat get _chat => source1;

  ToChatVM get _dto => source2;
}
