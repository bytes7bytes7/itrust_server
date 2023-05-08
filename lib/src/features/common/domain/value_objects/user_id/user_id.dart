import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../utils/utils.dart';

part 'user_id.freezed.dart';

part 'user_id.g.dart';

const _endUserPrefix = 'e';
const _staffUserPrefix = 's';

@freezed
class UserID with _$UserID {
  const factory UserID(String value) = _UserID;

  factory UserID.generateEnd() {
    return UserID('$_endUserPrefix${Uuid().v4()}');
  }

  factory UserID.generateStaff() {
    return UserID('$_staffUserPrefix${Uuid().v4()}');
  }

  factory UserID.fromJson(JsonMap json) => _$UserIDFromJson(json);

  factory UserID.fromString(String string) => UserID(string);

  const UserID._();

  String get str => value;

  bool get isEndID => value.startsWith(_endUserPrefix);

  bool get isStaffID => value.startsWith(_staffUserPrefix);
}
