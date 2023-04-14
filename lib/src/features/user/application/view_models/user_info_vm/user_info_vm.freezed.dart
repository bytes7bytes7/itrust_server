// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoVM _$UserInfoVMFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'end':
      return EndUserInfoVM.fromJson(json);
    case 'staff':
      return StaffUserInfoVM.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'UserInfoVM', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$UserInfoVM {
  UserID get id => throw _privateConstructorUsedError;
  List<String> get avatarUrls => throw _privateConstructorUsedError;
  String? get nick => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)
        end,
    required TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)
        staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)?
        end,
    TResult? Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)?
        end,
    TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfoVM value) end,
    required TResult Function(StaffUserInfoVM value) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfoVM value)? end,
    TResult? Function(StaffUserInfoVM value)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfoVM value)? end,
    TResult Function(StaffUserInfoVM value)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoVMCopyWith<UserInfoVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoVMCopyWith<$Res> {
  factory $UserInfoVMCopyWith(
          UserInfoVM value, $Res Function(UserInfoVM) then) =
      _$UserInfoVMCopyWithImpl<$Res, UserInfoVM>;
  @useResult
  $Res call({UserID id, List<String> avatarUrls, String? nick});

  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class _$UserInfoVMCopyWithImpl<$Res, $Val extends UserInfoVM>
    implements $UserInfoVMCopyWith<$Res> {
  _$UserInfoVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrls = null,
    Object? nick = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      avatarUrls: null == avatarUrls
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get id {
    return $UserIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EndUserInfoVMCopyWith<$Res>
    implements $UserInfoVMCopyWith<$Res> {
  factory _$$EndUserInfoVMCopyWith(
          _$EndUserInfoVM value, $Res Function(_$EndUserInfoVM) then) =
      __$$EndUserInfoVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserID id,
      String email,
      String firstName,
      List<String> avatarUrls,
      int friendsAmount,
      int postsAmount,
      int subscribersAmount,
      bool amIFriend,
      bool amISubscriber,
      bool didISentFriendBid,
      String? lastName,
      String? nick});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$EndUserInfoVMCopyWithImpl<$Res>
    extends _$UserInfoVMCopyWithImpl<$Res, _$EndUserInfoVM>
    implements _$$EndUserInfoVMCopyWith<$Res> {
  __$$EndUserInfoVMCopyWithImpl(
      _$EndUserInfoVM _value, $Res Function(_$EndUserInfoVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? avatarUrls = null,
    Object? friendsAmount = null,
    Object? postsAmount = null,
    Object? subscribersAmount = null,
    Object? amIFriend = null,
    Object? amISubscriber = null,
    Object? didISentFriendBid = null,
    Object? lastName = freezed,
    Object? nick = freezed,
  }) {
    return _then(_$EndUserInfoVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrls: null == avatarUrls
          ? _value._avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friendsAmount: null == friendsAmount
          ? _value.friendsAmount
          : friendsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      postsAmount: null == postsAmount
          ? _value.postsAmount
          : postsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribersAmount: null == subscribersAmount
          ? _value.subscribersAmount
          : subscribersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      amIFriend: null == amIFriend
          ? _value.amIFriend
          : amIFriend // ignore: cast_nullable_to_non_nullable
              as bool,
      amISubscriber: null == amISubscriber
          ? _value.amISubscriber
          : amISubscriber // ignore: cast_nullable_to_non_nullable
              as bool,
      didISentFriendBid: null == didISentFriendBid
          ? _value.didISentFriendBid
          : didISentFriendBid // ignore: cast_nullable_to_non_nullable
              as bool,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndUserInfoVM implements EndUserInfoVM {
  const _$EndUserInfoVM(
      {required this.id,
      required this.email,
      required this.firstName,
      required final List<String> avatarUrls,
      required this.friendsAmount,
      required this.postsAmount,
      required this.subscribersAmount,
      required this.amIFriend,
      required this.amISubscriber,
      required this.didISentFriendBid,
      this.lastName,
      this.nick,
      final String? $type})
      : _avatarUrls = avatarUrls,
        $type = $type ?? 'end';

  factory _$EndUserInfoVM.fromJson(Map<String, dynamic> json) =>
      _$$EndUserInfoVMFromJson(json);

  @override
  final UserID id;
  @override
  final String email;
  @override
  final String firstName;
  final List<String> _avatarUrls;
  @override
  List<String> get avatarUrls {
    if (_avatarUrls is EqualUnmodifiableListView) return _avatarUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatarUrls);
  }

  @override
  final int friendsAmount;
  @override
  final int postsAmount;
  @override
  final int subscribersAmount;
  @override
  final bool amIFriend;
  @override
  final bool amISubscriber;
  @override
  final bool didISentFriendBid;
  @override
  final String? lastName;
  @override
  final String? nick;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UserInfoVM.end(id: $id, email: $email, firstName: $firstName, avatarUrls: $avatarUrls, friendsAmount: $friendsAmount, postsAmount: $postsAmount, subscribersAmount: $subscribersAmount, amIFriend: $amIFriend, amISubscriber: $amISubscriber, didISentFriendBid: $didISentFriendBid, lastName: $lastName, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUserInfoVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            const DeepCollectionEquality()
                .equals(other._avatarUrls, _avatarUrls) &&
            (identical(other.friendsAmount, friendsAmount) ||
                other.friendsAmount == friendsAmount) &&
            (identical(other.postsAmount, postsAmount) ||
                other.postsAmount == postsAmount) &&
            (identical(other.subscribersAmount, subscribersAmount) ||
                other.subscribersAmount == subscribersAmount) &&
            (identical(other.amIFriend, amIFriend) ||
                other.amIFriend == amIFriend) &&
            (identical(other.amISubscriber, amISubscriber) ||
                other.amISubscriber == amISubscriber) &&
            (identical(other.didISentFriendBid, didISentFriendBid) ||
                other.didISentFriendBid == didISentFriendBid) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.nick, nick) || other.nick == nick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firstName,
      const DeepCollectionEquality().hash(_avatarUrls),
      friendsAmount,
      postsAmount,
      subscribersAmount,
      amIFriend,
      amISubscriber,
      didISentFriendBid,
      lastName,
      nick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserInfoVMCopyWith<_$EndUserInfoVM> get copyWith =>
      __$$EndUserInfoVMCopyWithImpl<_$EndUserInfoVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)
        end,
    required TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)
        staff,
  }) {
    return end(
        id,
        email,
        firstName,
        avatarUrls,
        friendsAmount,
        postsAmount,
        subscribersAmount,
        amIFriend,
        amISubscriber,
        didISentFriendBid,
        lastName,
        nick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)?
        end,
    TResult? Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
  }) {
    return end?.call(
        id,
        email,
        firstName,
        avatarUrls,
        friendsAmount,
        postsAmount,
        subscribersAmount,
        amIFriend,
        amISubscriber,
        didISentFriendBid,
        lastName,
        nick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)?
        end,
    TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(
          id,
          email,
          firstName,
          avatarUrls,
          friendsAmount,
          postsAmount,
          subscribersAmount,
          amIFriend,
          amISubscriber,
          didISentFriendBid,
          lastName,
          nick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfoVM value) end,
    required TResult Function(StaffUserInfoVM value) staff,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfoVM value)? end,
    TResult? Function(StaffUserInfoVM value)? staff,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfoVM value)? end,
    TResult Function(StaffUserInfoVM value)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EndUserInfoVMToJson(
      this,
    );
  }
}

abstract class EndUserInfoVM implements UserInfoVM {
  const factory EndUserInfoVM(
      {required final UserID id,
      required final String email,
      required final String firstName,
      required final List<String> avatarUrls,
      required final int friendsAmount,
      required final int postsAmount,
      required final int subscribersAmount,
      required final bool amIFriend,
      required final bool amISubscriber,
      required final bool didISentFriendBid,
      final String? lastName,
      final String? nick}) = _$EndUserInfoVM;

  factory EndUserInfoVM.fromJson(Map<String, dynamic> json) =
      _$EndUserInfoVM.fromJson;

  @override
  UserID get id;
  String get email;
  String get firstName;
  @override
  List<String> get avatarUrls;
  int get friendsAmount;
  int get postsAmount;
  int get subscribersAmount;
  bool get amIFriend;
  bool get amISubscriber;
  bool get didISentFriendBid;
  String? get lastName;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$EndUserInfoVMCopyWith<_$EndUserInfoVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffUserInfoVMCopyWith<$Res>
    implements $UserInfoVMCopyWith<$Res> {
  factory _$$StaffUserInfoVMCopyWith(
          _$StaffUserInfoVM value, $Res Function(_$StaffUserInfoVM) then) =
      __$$StaffUserInfoVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID id, String name, List<String> avatarUrls, String? nick});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$StaffUserInfoVMCopyWithImpl<$Res>
    extends _$UserInfoVMCopyWithImpl<$Res, _$StaffUserInfoVM>
    implements _$$StaffUserInfoVMCopyWith<$Res> {
  __$$StaffUserInfoVMCopyWithImpl(
      _$StaffUserInfoVM _value, $Res Function(_$StaffUserInfoVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrls = null,
    Object? nick = freezed,
  }) {
    return _then(_$StaffUserInfoVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrls: null == avatarUrls
          ? _value._avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffUserInfoVM implements StaffUserInfoVM {
  const _$StaffUserInfoVM(
      {required this.id,
      required this.name,
      required final List<String> avatarUrls,
      this.nick,
      final String? $type})
      : _avatarUrls = avatarUrls,
        $type = $type ?? 'staff';

  factory _$StaffUserInfoVM.fromJson(Map<String, dynamic> json) =>
      _$$StaffUserInfoVMFromJson(json);

  @override
  final UserID id;
  @override
  final String name;
  final List<String> _avatarUrls;
  @override
  List<String> get avatarUrls {
    if (_avatarUrls is EqualUnmodifiableListView) return _avatarUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatarUrls);
  }

  @override
  final String? nick;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UserInfoVM.staff(id: $id, name: $name, avatarUrls: $avatarUrls, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUserInfoVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._avatarUrls, _avatarUrls) &&
            (identical(other.nick, nick) || other.nick == nick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_avatarUrls), nick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserInfoVMCopyWith<_$StaffUserInfoVM> get copyWith =>
      __$$StaffUserInfoVMCopyWithImpl<_$StaffUserInfoVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)
        end,
    required TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)
        staff,
  }) {
    return staff(id, name, avatarUrls, nick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)?
        end,
    TResult? Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
  }) {
    return staff?.call(id, name, avatarUrls, nick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            String? lastName,
            String? nick)?
        end,
    TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(id, name, avatarUrls, nick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfoVM value) end,
    required TResult Function(StaffUserInfoVM value) staff,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfoVM value)? end,
    TResult? Function(StaffUserInfoVM value)? staff,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfoVM value)? end,
    TResult Function(StaffUserInfoVM value)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffUserInfoVMToJson(
      this,
    );
  }
}

abstract class StaffUserInfoVM implements UserInfoVM {
  const factory StaffUserInfoVM(
      {required final UserID id,
      required final String name,
      required final List<String> avatarUrls,
      final String? nick}) = _$StaffUserInfoVM;

  factory StaffUserInfoVM.fromJson(Map<String, dynamic> json) =
      _$StaffUserInfoVM.fromJson;

  @override
  UserID get id;
  String get name;
  @override
  List<String> get avatarUrls;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$StaffUserInfoVMCopyWith<_$StaffUserInfoVM> get copyWith =>
      throw _privateConstructorUsedError;
}
