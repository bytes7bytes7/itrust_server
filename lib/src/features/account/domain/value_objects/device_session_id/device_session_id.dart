import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/typedef.dart';

part 'device_session_id.freezed.dart';

part 'device_session_id.g.dart';

@freezed
class DeviceSessionID with _$DeviceSessionID {
  const factory DeviceSessionID(String value) = _DeviceSessionID;

  factory DeviceSessionID.generate() {
    return DeviceSessionID(Uuid().v4());
  }

  factory DeviceSessionID.fromJson(JsonMap json) =>
      _$DeviceSessionIDFromJson(json);

  factory DeviceSessionID.fromString(String string) => DeviceSessionID(string);

  const DeviceSessionID._();

  String get str => value;
}
