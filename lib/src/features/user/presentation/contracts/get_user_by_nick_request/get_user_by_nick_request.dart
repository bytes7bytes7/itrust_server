import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_user_by_nick_request.g.dart';

@JsonSerializable()
class GetUserByNickRequest {
  const GetUserByNickRequest({
    required this.userNick,
  });

  @JsonKey(name: userNickKey)
  final String userNick;

  factory GetUserByNickRequest.fromJson(JsonMap json) =>
      _$GetUserByNickRequestFromJson(json);

  JsonMap toJson() => _$GetUserByNickRequestToJson(this);
}
