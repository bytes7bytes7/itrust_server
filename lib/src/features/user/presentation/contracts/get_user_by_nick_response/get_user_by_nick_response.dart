import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/common.dart';

part 'get_user_by_nick_response.g.dart';

@JsonSerializable()
class GetUserByNickResponse {
  const GetUserByNickResponse({
    required this.user,
  });

  final User user;

  factory GetUserByNickResponse.fromJson(JsonMap json) =>
      _$GetUserByNickResponseFromJson(json);

  JsonMap toJson() => _$GetUserByNickResponseToJson(this);
}
