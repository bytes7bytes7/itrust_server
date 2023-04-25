import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/dto/dto.dart';

part 'create_monologue_chat_request.g.dart';

@JsonSerializable()
class CreateMonologueChatRequest {
  const CreateMonologueChatRequest({
    required this.title,
    this.iconName,
    this.image,
  });

  final String title;
  final String? iconName;
  final NewMedia? image;

  factory CreateMonologueChatRequest.fromJson(JsonMap json) =>
      _$CreateMonologueChatRequestFromJson(json);

  JsonMap toJson() => _$CreateMonologueChatRequestToJson(this);
}
