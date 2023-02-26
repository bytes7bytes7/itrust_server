import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  const RegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String password;

  factory RegisterRequest.fromJson(JsonMap json) =>
      _$RegisterRequestFromJson(json);

  JsonMap toJson() => _$RegisterRequestToJson(this);
}
