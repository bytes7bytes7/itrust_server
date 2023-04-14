// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserVM _$UserVMFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'end':
      return EndUserVM.fromJson(json);
    case 'staff':
      return StaffUserVM.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'UserVM', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$UserVM {
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
    required TResult Function(EndUserVM value) end,
    required TResult Function(StaffUserVM value) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserVM value)? end,
    TResult? Function(StaffUserVM value)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserVM value)? end,
    TResult Function(StaffUserVM value)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserVMCopyWith<UserVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVMCopyWith<$Res> {
  factory $UserVMCopyWith(UserVM value, $Res Function(UserVM) then) =
      _$UserVMCopyWithImpl<$Res, UserVM>;
  @useResult
  $Res call({UserID id, List<String> avatarUrls, String? nick});

  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class _$UserVMCopyWithImpl<$Res, $Val extends UserVM>
    implements $UserVMCopyWith<$Res> {
  _$UserVMCopyWithImpl(this._value, this._then);

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
abstract class _$$EndUserVMCopyWith<$Res> implements $UserVMCopyWith<$Res> {
  factory _$$EndUserVMCopyWith(
          _$EndUserVM value, $Res Function(_$EndUserVM) then) =
      __$$EndUserVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserID id,
      String email,
      String firstName,
      List<String> avatarUrls,
      int friendsAmount,
      String? lastName,
      String? nick});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$EndUserVMCopyWithImpl<$Res>
    extends _$UserVMCopyWithImpl<$Res, _$EndUserVM>
    implements _$$EndUserVMCopyWith<$Res> {
  __$$EndUserVMCopyWithImpl(
      _$EndUserVM _value, $Res Function(_$EndUserVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? avatarUrls = null,
    Object? friendsAmount = null,
    Object? lastName = freezed,
    Object? nick = freezed,
  }) {
    return _then(_$EndUserVM(
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
class _$EndUserVM implements EndUserVM {
  const _$EndUserVM(
      {required this.id,
      required this.email,
      required this.firstName,
      required final List<String> avatarUrls,
      required this.friendsAmount,
      this.lastName,
      this.nick,
      final String? $type})
      : _avatarUrls = avatarUrls,
        $type = $type ?? 'end';

  factory _$EndUserVM.fromJson(Map<String, dynamic> json) =>
      _$$EndUserVMFromJson(json);

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
  final String? lastName;
  @override
  final String? nick;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UserVM.end(id: $id, email: $email, firstName: $firstName, avatarUrls: $avatarUrls, friendsAmount: $friendsAmount, lastName: $lastName, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUserVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            const DeepCollectionEquality()
                .equals(other._avatarUrls, _avatarUrls) &&
            (identical(other.friendsAmount, friendsAmount) ||
                other.friendsAmount == friendsAmount) &&
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
      lastName,
      nick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserVMCopyWith<_$EndUserVM> get copyWith =>
      __$$EndUserVMCopyWithImpl<_$EndUserVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
            String? lastName,
            String? nick)
        end,
    required TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)
        staff,
  }) {
    return end(id, email, firstName, avatarUrls, friendsAmount, lastName, nick);
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
            String? lastName,
            String? nick)?
        end,
    TResult? Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
  }) {
    return end?.call(
        id, email, firstName, avatarUrls, friendsAmount, lastName, nick);
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
          id, email, firstName, avatarUrls, friendsAmount, lastName, nick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserVM value) end,
    required TResult Function(StaffUserVM value) staff,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserVM value)? end,
    TResult? Function(StaffUserVM value)? staff,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserVM value)? end,
    TResult Function(StaffUserVM value)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EndUserVMToJson(
      this,
    );
  }
}

abstract class EndUserVM implements UserVM {
  const factory EndUserVM(
      {required final UserID id,
      required final String email,
      required final String firstName,
      required final List<String> avatarUrls,
      required final int friendsAmount,
      final String? lastName,
      final String? nick}) = _$EndUserVM;

  factory EndUserVM.fromJson(Map<String, dynamic> json) = _$EndUserVM.fromJson;

  @override
  UserID get id;
  String get email;
  String get firstName;
  @override
  List<String> get avatarUrls;
  int get friendsAmount;
  String? get lastName;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$EndUserVMCopyWith<_$EndUserVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffUserVMCopyWith<$Res> implements $UserVMCopyWith<$Res> {
  factory _$$StaffUserVMCopyWith(
          _$StaffUserVM value, $Res Function(_$StaffUserVM) then) =
      __$$StaffUserVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID id, String name, List<String> avatarUrls, String? nick});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$StaffUserVMCopyWithImpl<$Res>
    extends _$UserVMCopyWithImpl<$Res, _$StaffUserVM>
    implements _$$StaffUserVMCopyWith<$Res> {
  __$$StaffUserVMCopyWithImpl(
      _$StaffUserVM _value, $Res Function(_$StaffUserVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrls = null,
    Object? nick = freezed,
  }) {
    return _then(_$StaffUserVM(
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
class _$StaffUserVM implements StaffUserVM {
  const _$StaffUserVM(
      {required this.id,
      required this.name,
      required final List<String> avatarUrls,
      this.nick,
      final String? $type})
      : _avatarUrls = avatarUrls,
        $type = $type ?? 'staff';

  factory _$StaffUserVM.fromJson(Map<String, dynamic> json) =>
      _$$StaffUserVMFromJson(json);

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
    return 'UserVM.staff(id: $id, name: $name, avatarUrls: $avatarUrls, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUserVM &&
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
  _$$StaffUserVMCopyWith<_$StaffUserVM> get copyWith =>
      __$$StaffUserVMCopyWithImpl<_$StaffUserVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserID id,
            String email,
            String firstName,
            List<String> avatarUrls,
            int friendsAmount,
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
    required TResult Function(EndUserVM value) end,
    required TResult Function(StaffUserVM value) staff,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserVM value)? end,
    TResult? Function(StaffUserVM value)? staff,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserVM value)? end,
    TResult Function(StaffUserVM value)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffUserVMToJson(
      this,
    );
  }
}

abstract class StaffUserVM implements UserVM {
  const factory StaffUserVM(
      {required final UserID id,
      required final String name,
      required final List<String> avatarUrls,
      final String? nick}) = _$StaffUserVM;

  factory StaffUserVM.fromJson(Map<String, dynamic> json) =
      _$StaffUserVM.fromJson;

  @override
  UserID get id;
  String get name;
  @override
  List<String> get avatarUrls;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$StaffUserVMCopyWith<_$StaffUserVM> get copyWith =>
      throw _privateConstructorUsedError;
}
