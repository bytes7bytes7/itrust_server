import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_users_request.g.dart';

@JsonSerializable()
class GetUsersRequest {
  const GetUsersRequest({
    required this.lastUserID,
  });

  final String? lastUserID;

  factory GetUsersRequest.fromJson(JsonMap json) =>
      _$GetUsersRequestFromJson(json);

  JsonMap toJson() => _$GetUsersRequestToJson(this);
}
