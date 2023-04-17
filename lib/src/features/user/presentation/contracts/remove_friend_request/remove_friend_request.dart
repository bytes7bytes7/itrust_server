import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'remove_friend_request.g.dart';

@JsonSerializable()
class RemoveFriendRequest {
  const RemoveFriendRequest({
    required this.removeUserID,
  });

  final String removeUserID;

  factory RemoveFriendRequest.fromJson(JsonMap json) =>
      _$RemoveFriendRequestFromJson(json);

  JsonMap toJson() => _$RemoveFriendRequestToJson(this);
}
