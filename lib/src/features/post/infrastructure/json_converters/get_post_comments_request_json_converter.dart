import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetPostCommentsRequest, JsonMap>)
class GetPostCommentsRequestJsonConverter
    extends JsonConverter<GetPostCommentsRequest, JsonMap> {
  const GetPostCommentsRequestJsonConverter();

  @override
  GetPostCommentsRequest fromJson(JsonMap json) {
    return GetPostCommentsRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetPostCommentsRequest object) {
    return object.toJson();
  }
}
