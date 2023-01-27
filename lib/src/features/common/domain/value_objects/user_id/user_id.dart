import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'user_id.freezed.dart';

part 'user_id.g.dart';

@freezed
class UserID with _$UserID {
  const factory UserID(String value) = _UserID;

  factory UserID.generate() {
    return _UserID(Uuid().v4());
  }

  const UserID._();

  factory UserID.fromJson(Map<String, Object?> json) => _$UserIDFromJson(json);

  String get str => value;
}
