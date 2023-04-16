import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'media_response.g.dart';

@JsonSerializable()
class MediaResponse {
  const MediaResponse({
    required this.encodedBytes,
  });

  final String encodedBytes;

  factory MediaResponse.fromJson(JsonMap json) => _$MediaResponseFromJson(json);

  JsonMap toJson() => _$MediaResponseToJson(this);
}
