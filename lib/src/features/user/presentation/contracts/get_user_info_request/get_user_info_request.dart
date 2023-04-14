import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_user_info_request.g.dart';

@JsonSerializable()
class GetUserInfoRequest {
  const GetUserInfoRequest({
    required this.aboutUserID,
  });

  final String aboutUserID;

  factory GetUserInfoRequest.fromJson(JsonMap json) =>
      _$GetUserInfoRequestFromJson(json);

  JsonMap toJson() => _$GetUserInfoRequestToJson(this);
}
