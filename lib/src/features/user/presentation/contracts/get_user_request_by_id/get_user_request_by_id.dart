import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_user_request_by_id.g.dart';

@JsonSerializable()
class GetUserRequestByID {
  const GetUserRequestByID();

  factory GetUserRequestByID.fromJson(JsonMap json) =>
      _$GetUserRequestByIDFromJson(json);

  JsonMap toJson() => _$GetUserRequestByIDToJson(this);
}
