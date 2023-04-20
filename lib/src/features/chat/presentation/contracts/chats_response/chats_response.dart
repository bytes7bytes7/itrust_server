import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';

part 'chats_response.g.dart';

@JsonSerializable()
class ChatsResponse {
  const ChatsResponse({
    required this.chats,
  });

  final List<ChatVM> chats;

  factory ChatsResponse.fromJson(JsonMap json) => _$ChatsResponseFromJson(json);

  JsonMap toJson() => _$ChatsResponseToJson(this);
}
