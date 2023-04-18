import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_for_user_request.g.dart';

@JsonSerializable()
class GetForUserRequest {
  const GetForUserRequest({
    required this.userID,
    required this.lastUserID,
  });

  final String userID;
  final String? lastUserID;

  factory GetForUserRequest.fromJson(JsonMap json) =>
      _$GetForUserRequestFromJson(json);

  JsonMap toJson() => _$GetForUserRequestToJson(this);
}
