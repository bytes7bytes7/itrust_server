import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetPostCommentRequest, JsonMap>)
class GetPostCommentRequestJsonConverter
    extends JsonConverter<GetPostCommentRequest, JsonMap> {
  const GetPostCommentRequestJsonConverter();

  @override
  GetPostCommentRequest fromJson(JsonMap json) {
    return GetPostCommentRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetPostCommentRequest object) {
    return object.toJson();
  }
}
