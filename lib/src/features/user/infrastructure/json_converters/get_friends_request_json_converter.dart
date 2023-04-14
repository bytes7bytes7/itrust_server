import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetFriendsRequest, JsonMap>)
class GetFriendsRequestJsonConverter
    extends JsonConverter<GetFriendsRequest, JsonMap> {
  const GetFriendsRequestJsonConverter();

  @override
  GetFriendsRequest fromJson(JsonMap json) {
    return GetFriendsRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetFriendsRequest object) {
    return object.toJson();
  }
}
