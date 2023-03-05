import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/common.dart';

part 'get_user_response_by_id.g.dart';

@JsonSerializable()
class GetUserResponseByID {
  const GetUserResponseByID({
    required this.user,
  });

  final User user;

  factory GetUserResponseByID.fromJson(JsonMap json) =>
      _$GetUserResponseByIDFromJson(json);

  JsonMap toJson() => _$GetUserResponseByIDToJson(this);
}
