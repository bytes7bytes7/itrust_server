import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'media_id.freezed.dart';

part 'media_id.g.dart';

@freezed
class MediaID with _$MediaID {
  const factory MediaID(String value) = _MediaID;

  factory MediaID.generate() {
    return MediaID(Uuid().v4());
  }

  factory MediaID.fromJson(JsonMap json) => _$MediaIDFromJson(json);

  factory MediaID.fromString(String string) => MediaID(string);

  const MediaID._();

  String get str => value;
}
