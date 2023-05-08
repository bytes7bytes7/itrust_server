import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/application/dto/new_media/new_media.dart';

part 'create_group_chat_request.g.dart';

@JsonSerializable()
class CreateGroupChatRequest {
  const CreateGroupChatRequest({
    required this.title,
    required this.image,
    required this.guestIDs,
  });

  final String title;
  final NewMedia? image;
  final List<String> guestIDs;

  factory CreateGroupChatRequest.fromJson(JsonMap json) =>
      _$CreateGroupChatRequestFromJson(json);

  JsonMap toJson() => _$CreateGroupChatRequestToJson(this);
}
