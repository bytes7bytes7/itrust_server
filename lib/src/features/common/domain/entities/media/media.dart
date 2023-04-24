import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/media_id/media_id.dart';

part 'media.freezed.dart';

@JsonEnum()
enum MediaType {
  photo,
  video,
  doc,
}

@Freezed(
  toJson: false,
  fromJson: false,
)
class Media with _$Media {
  const factory Media({
    required MediaID id,
    required MediaType type,
    required List<int> bytes,
  }) = _Media;
}
