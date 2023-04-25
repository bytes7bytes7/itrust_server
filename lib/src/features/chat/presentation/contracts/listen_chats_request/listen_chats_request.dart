import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'listen_chats_request.g.dart';

@JsonSerializable()
class ListenChatsRequest {
  const ListenChatsRequest();

  factory ListenChatsRequest.fromJson(JsonMap json) =>
      _$ListenChatsRequestFromJson(json);

  JsonMap toJson() => _$ListenChatsRequestToJson(this);
}
