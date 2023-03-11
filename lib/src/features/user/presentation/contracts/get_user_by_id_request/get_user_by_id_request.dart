import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_user_by_id_request.g.dart';

@JsonSerializable()
class GetUserByIDRequest {
  const GetUserByIDRequest();

  factory GetUserByIDRequest.fromJson(JsonMap json) =>
      _$GetUserByIDRequestFromJson(json);

  JsonMap toJson() => _$GetUserByIDRequestToJson(this);
}
