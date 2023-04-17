import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';
import '../../value_objects/value_objects.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@Freezed(
  unionKey: 'type',
)
class User with _$User {
  const factory User.end({
    required UserID id,
    required String email,
    required String firstName,
    required List<String> avatarUrls,
    required List<UserID> friends,
    required List<UserID> subscribers,
    required List<UserID> subscriptions,
    required List<PostID> posts,
    required List<UserID> myFriendBids,
    required List<UserID> friendsBidsToMe,
    String? lastName,
    String? nick,
  }) = EndUser;

  const factory User.staff({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
    String? nick,
  }) = StaffUser;

  factory User.fromJson(JsonMap json) => _$UserFromJson(json);
}
