import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_chat_partners_request.g.dart';

@JsonSerializable()
class GetChatPartnersRequest {
  const GetChatPartnersRequest({
    required this.lastUserID,
  });

  final String? lastUserID;

  factory GetChatPartnersRequest.fromJson(JsonMap json) =>
      _$GetChatPartnersRequestFromJson(json);

  JsonMap toJson() => _$GetChatPartnersRequestToJson(this);
}
