import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_tags_request.g.dart';

@JsonSerializable()
class GetTagsRequest {
  const GetTagsRequest();

  factory GetTagsRequest.fromJson(JsonMap json) =>
      _$GetTagsRequestFromJson(json);

  JsonMap toJson() => _$GetTagsRequestToJson(this);
}
