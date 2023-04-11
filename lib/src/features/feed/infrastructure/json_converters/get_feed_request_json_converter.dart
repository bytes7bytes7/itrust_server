import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetFeedRequest, JsonMap>)
class GetFeedRequestJsonConverter
    extends JsonConverter<GetFeedRequest, JsonMap> {
  const GetFeedRequestJsonConverter();

  @override
  GetFeedRequest fromJson(JsonMap json) {
    return GetFeedRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetFeedRequest object) {
    return object.toJson();
  }
}
