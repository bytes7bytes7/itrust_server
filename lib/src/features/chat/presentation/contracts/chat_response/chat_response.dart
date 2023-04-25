import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/view_models/chat_vm/chat_vm.dart';

part 'chat_response.g.dart';

@JsonSerializable()
class ChatResponse {
  const ChatResponse({
    required this.chat,
  });

  final ChatVM chat;

  factory ChatResponse.fromJson(JsonMap json) => _$ChatResponseFromJson(json);

  JsonMap toJson() => _$ChatResponseToJson(this);
}
