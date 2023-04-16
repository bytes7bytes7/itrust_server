import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../json_keys.dart';

part 'get_media_request.g.dart';

@JsonSerializable()
class GetMediaRequest {
  const GetMediaRequest({
    required this.mediaID,
  });

  @JsonKey(name: mediaIDKey)
  final String mediaID;

  factory GetMediaRequest.fromJson(JsonMap json) =>
      _$GetMediaRequestFromJson(json);

  JsonMap toJson() => _$GetMediaRequestToJson(this);
}
