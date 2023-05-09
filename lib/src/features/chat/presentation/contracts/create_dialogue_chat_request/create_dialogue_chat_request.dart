import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'create_dialogue_chat_request.g.dart';

@JsonSerializable()
class CreateDialogueChatRequest {
  const CreateDialogueChatRequest({
    required this.partnerID,
  });

  final String partnerID;

  factory CreateDialogueChatRequest.fromJson(JsonMap json) =>
      _$CreateDialogueChatRequestFromJson(json);

  JsonMap toJson() => _$CreateDialogueChatRequestToJson(this);
}
