import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetTagsRequest, JsonMap>)
class GetTagsRequestJsonConverter
    extends JsonConverter<GetTagsRequest, JsonMap> {
  const GetTagsRequestJsonConverter();

  @override
  GetTagsRequest fromJson(JsonMap json) {
    return GetTagsRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetTagsRequest object) {
    return object.toJson();
  }
}
