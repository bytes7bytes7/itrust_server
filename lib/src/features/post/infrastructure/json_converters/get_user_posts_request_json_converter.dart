import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetUserPostsRequest, JsonMap>)
class GetUserPostsRequestJsonConverter
    extends JsonConverter<GetUserPostsRequest, JsonMap> {
  const GetUserPostsRequestJsonConverter();

  @override
  GetUserPostsRequest fromJson(JsonMap json) {
    return GetUserPostsRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserPostsRequest object) {
    return object.toJson();
  }
}
