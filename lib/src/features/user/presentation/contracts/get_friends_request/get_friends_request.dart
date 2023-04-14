import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_friends_request.g.dart';

@JsonSerializable()
class GetFriendsRequest {
  const GetFriendsRequest({
    required this.friendsTo,
    required this.lastUserID,
  });

  final String friendsTo;
  final String? lastUserID;

  factory GetFriendsRequest.fromJson(JsonMap json) =>
      _$GetFriendsRequestFromJson(json);

  JsonMap toJson() => _$GetFriendsRequestToJson(this);
}
