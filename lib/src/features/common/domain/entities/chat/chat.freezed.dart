// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Chat {
  ChatID get id => throw _privateConstructorUsedError;
  UserID get ownerID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get iconName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ChatID id, UserID ownerID, String title, String? iconName)
        monologue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ChatID id, UserID ownerID, String title, String? iconName)?
        monologue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, UserID ownerID, String title, String? iconName)?
        monologue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call({ChatID id, UserID ownerID, String title, String? iconName});

  $ChatIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get ownerID;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerID = null,
    Object? title = null,
    Object? iconName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as UserID,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get id {
    return $ChatIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get ownerID {
    return $UserIDCopyWith<$Res>(_value.ownerID, (value) {
      return _then(_value.copyWith(ownerID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonologueChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$MonologueChatCopyWith(
          _$MonologueChat value, $Res Function(_$MonologueChat) then) =
      __$$MonologueChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatID id, UserID ownerID, String title, String? iconName});

  @override
  $ChatIDCopyWith<$Res> get id;
  @override
  $UserIDCopyWith<$Res> get ownerID;
}

/// @nodoc
class __$$MonologueChatCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$MonologueChat>
    implements _$$MonologueChatCopyWith<$Res> {
  __$$MonologueChatCopyWithImpl(
      _$MonologueChat _value, $Res Function(_$MonologueChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerID = null,
    Object? title = null,
    Object? iconName = freezed,
  }) {
    return _then(_$MonologueChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as UserID,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MonologueChat implements MonologueChat {
  const _$MonologueChat(
      {required this.id,
      required this.ownerID,
      required this.title,
      this.iconName});

  @override
  final ChatID id;
  @override
  final UserID ownerID;
  @override
  final String title;
  @override
  final String? iconName;

  @override
  String toString() {
    return 'Chat.monologue(id: $id, ownerID: $ownerID, title: $title, iconName: $iconName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonologueChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, ownerID, title, iconName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonologueChatCopyWith<_$MonologueChat> get copyWith =>
      __$$MonologueChatCopyWithImpl<_$MonologueChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ChatID id, UserID ownerID, String title, String? iconName)
        monologue,
  }) {
    return monologue(id, ownerID, title, iconName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ChatID id, UserID ownerID, String title, String? iconName)?
        monologue,
  }) {
    return monologue?.call(id, ownerID, title, iconName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, UserID ownerID, String title, String? iconName)?
        monologue,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(id, ownerID, title, iconName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
  }) {
    return monologue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
  }) {
    return monologue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(this);
    }
    return orElse();
  }
}

abstract class MonologueChat implements Chat {
  const factory MonologueChat(
      {required final ChatID id,
      required final UserID ownerID,
      required final String title,
      final String? iconName}) = _$MonologueChat;

  @override
  ChatID get id;
  @override
  UserID get ownerID;
  @override
  String get title;
  @override
  String? get iconName;
  @override
  @JsonKey(ignore: true)
  _$$MonologueChatCopyWith<_$MonologueChat> get copyWith =>
      throw _privateConstructorUsedError;
}
