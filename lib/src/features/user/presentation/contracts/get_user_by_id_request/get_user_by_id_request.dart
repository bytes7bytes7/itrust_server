import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_user_by_id_request.g.dart';

@JsonSerializable()
class GetUserByIDRequest {
  const GetUserByIDRequest({
    required this.userID,
  });

  @JsonKey(name: userIDKey)
  final String userID;

  factory GetUserByIDRequest.fromJson(JsonMap json) =>
      _$GetUserByIDRequestFromJson(json);

  JsonMap toJson() => _$GetUserByIDRequestToJson(this);
}
