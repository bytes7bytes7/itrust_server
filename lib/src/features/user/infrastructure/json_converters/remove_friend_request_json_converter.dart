import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<RemoveFriendRequest, JsonMap>)
class RemoveFriendRequestJsonConverter
    extends JsonConverter<RemoveFriendRequest, JsonMap> {
  const RemoveFriendRequestJsonConverter();

  @override
  RemoveFriendRequest fromJson(JsonMap json) {
    return RemoveFriendRequest.fromJson(json);
  }

  @override
  JsonMap toJson(RemoveFriendRequest object) {
    return object.toJson();
  }
}
