import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_chats_request.g.dart';

@JsonSerializable()
class GetChatsRequest {
  const GetChatsRequest({
    required this.lastChatID,
  });

  final String? lastChatID;

  factory GetChatsRequest.fromJson(JsonMap json) =>
      _$GetChatsRequestFromJson(json);

  JsonMap toJson() => _$GetChatsRequestToJson(this);
}
