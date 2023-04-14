import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/common.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse{
  const UserResponse({
    required this.user,
  });

  final UserVM user;

  factory UserResponse.fromJson(JsonMap json) =>
      _$UserResponseFromJson(json);

  JsonMap toJson() => _$UserResponseToJson(this);
}
