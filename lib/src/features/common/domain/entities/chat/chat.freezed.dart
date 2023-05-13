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
  DateTime get createdAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)
        dialogue,
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
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
  $Res call({ChatID id, DateTime createdAt});

  $ChatIDCopyWith<$Res> get id;
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
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get id {
    return $ChatIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
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
  $Res call(
      {ChatID id,
      DateTime createdAt,
      UserID ownerID,
      String title,
      String? iconName,
      MediaID? picID});

  @override
  $ChatIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get ownerID;
  $MediaIDCopyWith<$Res>? get picID;
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
    Object? createdAt = null,
    Object? ownerID = null,
    Object? title = null,
    Object? iconName = freezed,
    Object? picID = freezed,
  }) {
    return _then(_$MonologueChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      picID: freezed == picID
          ? _value.picID
          : picID // ignore: cast_nullable_to_non_nullable
              as MediaID?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get ownerID {
    return $UserIDCopyWith<$Res>(_value.ownerID, (value) {
      return _then(_value.copyWith(ownerID: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaIDCopyWith<$Res>? get picID {
    if (_value.picID == null) {
      return null;
    }

    return $MediaIDCopyWith<$Res>(_value.picID!, (value) {
      return _then(_value.copyWith(picID: value));
    });
  }
}

/// @nodoc

class _$MonologueChat implements MonologueChat {
  const _$MonologueChat(
      {required this.id,
      required this.createdAt,
      required this.ownerID,
      required this.title,
      this.iconName,
      this.picID});

  @override
  final ChatID id;
  @override
  final DateTime createdAt;
  @override
  final UserID ownerID;
  @override
  final String title;
  @override
  final String? iconName;
  @override
  final MediaID? picID;

  @override
  String toString() {
    return 'Chat.monologue(id: $id, createdAt: $createdAt, ownerID: $ownerID, title: $title, iconName: $iconName, picID: $picID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonologueChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.picID, picID) || other.picID == picID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, ownerID, title, iconName, picID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonologueChatCopyWith<_$MonologueChat> get copyWith =>
      __$$MonologueChatCopyWithImpl<_$MonologueChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)
        dialogue,
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)
        group,
  }) {
    return monologue(id, createdAt, ownerID, title, iconName, picID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
  }) {
    return monologue?.call(id, createdAt, ownerID, title, iconName, picID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(id, createdAt, ownerID, title, iconName, picID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) {
    return monologue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) {
    return monologue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
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
      required final DateTime createdAt,
      required final UserID ownerID,
      required final String title,
      final String? iconName,
      final MediaID? picID}) = _$MonologueChat;

  @override
  ChatID get id;
  @override
  DateTime get createdAt;
  UserID get ownerID;
  String get title;
  String? get iconName;
  MediaID? get picID;
  @override
  @JsonKey(ignore: true)
  _$$MonologueChatCopyWith<_$MonologueChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogueChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$DialogueChatCopyWith(
          _$DialogueChat value, $Res Function(_$DialogueChat) then) =
      __$$DialogueChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id, DateTime createdAt, UserID firstUserID, UserID secondUserID});

  @override
  $ChatIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get firstUserID;
  $UserIDCopyWith<$Res> get secondUserID;
}

/// @nodoc
class __$$DialogueChatCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$DialogueChat>
    implements _$$DialogueChatCopyWith<$Res> {
  __$$DialogueChatCopyWithImpl(
      _$DialogueChat _value, $Res Function(_$DialogueChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? firstUserID = null,
    Object? secondUserID = null,
  }) {
    return _then(_$DialogueChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstUserID: null == firstUserID
          ? _value.firstUserID
          : firstUserID // ignore: cast_nullable_to_non_nullable
              as UserID,
      secondUserID: null == secondUserID
          ? _value.secondUserID
          : secondUserID // ignore: cast_nullable_to_non_nullable
              as UserID,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get firstUserID {
    return $UserIDCopyWith<$Res>(_value.firstUserID, (value) {
      return _then(_value.copyWith(firstUserID: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get secondUserID {
    return $UserIDCopyWith<$Res>(_value.secondUserID, (value) {
      return _then(_value.copyWith(secondUserID: value));
    });
  }
}

/// @nodoc

class _$DialogueChat implements DialogueChat {
  const _$DialogueChat(
      {required this.id,
      required this.createdAt,
      required this.firstUserID,
      required this.secondUserID});

  @override
  final ChatID id;
  @override
  final DateTime createdAt;
  @override
  final UserID firstUserID;
  @override
  final UserID secondUserID;

  @override
  String toString() {
    return 'Chat.dialogue(id: $id, createdAt: $createdAt, firstUserID: $firstUserID, secondUserID: $secondUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.firstUserID, firstUserID) ||
                other.firstUserID == firstUserID) &&
            (identical(other.secondUserID, secondUserID) ||
                other.secondUserID == secondUserID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, firstUserID, secondUserID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueChatCopyWith<_$DialogueChat> get copyWith =>
      __$$DialogueChatCopyWithImpl<_$DialogueChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)
        dialogue,
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)
        group,
  }) {
    return dialogue(id, createdAt, firstUserID, secondUserID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
  }) {
    return dialogue?.call(id, createdAt, firstUserID, secondUserID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(id, createdAt, firstUserID, secondUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) {
    return dialogue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) {
    return dialogue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(this);
    }
    return orElse();
  }
}

abstract class DialogueChat implements Chat {
  const factory DialogueChat(
      {required final ChatID id,
      required final DateTime createdAt,
      required final UserID firstUserID,
      required final UserID secondUserID}) = _$DialogueChat;

  @override
  ChatID get id;
  @override
  DateTime get createdAt;
  UserID get firstUserID;
  UserID get secondUserID;
  @override
  @JsonKey(ignore: true)
  _$$DialogueChatCopyWith<_$DialogueChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$GroupChatCopyWith(
          _$GroupChat value, $Res Function(_$GroupChat) then) =
      __$$GroupChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      DateTime createdAt,
      UserID ownerID,
      String title,
      MediaID? picID});

  @override
  $ChatIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get ownerID;
  $MediaIDCopyWith<$Res>? get picID;
}

/// @nodoc
class __$$GroupChatCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$GroupChat>
    implements _$$GroupChatCopyWith<$Res> {
  __$$GroupChatCopyWithImpl(
      _$GroupChat _value, $Res Function(_$GroupChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? ownerID = null,
    Object? title = null,
    Object? picID = freezed,
  }) {
    return _then(_$GroupChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as UserID,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      picID: freezed == picID
          ? _value.picID
          : picID // ignore: cast_nullable_to_non_nullable
              as MediaID?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get ownerID {
    return $UserIDCopyWith<$Res>(_value.ownerID, (value) {
      return _then(_value.copyWith(ownerID: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaIDCopyWith<$Res>? get picID {
    if (_value.picID == null) {
      return null;
    }

    return $MediaIDCopyWith<$Res>(_value.picID!, (value) {
      return _then(_value.copyWith(picID: value));
    });
  }
}

/// @nodoc

class _$GroupChat implements GroupChat {
  const _$GroupChat(
      {required this.id,
      required this.createdAt,
      required this.ownerID,
      required this.title,
      this.picID});

  @override
  final ChatID id;
  @override
  final DateTime createdAt;
  @override
  final UserID ownerID;
  @override
  final String title;
  @override
  final MediaID? picID;

  @override
  String toString() {
    return 'Chat.group(id: $id, createdAt: $createdAt, ownerID: $ownerID, title: $title, picID: $picID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.picID, picID) || other.picID == picID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, ownerID, title, picID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupChatCopyWith<_$GroupChat> get copyWith =>
      __$$GroupChatCopyWithImpl<_$GroupChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)
        dialogue,
    required TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)
        group,
  }) {
    return group(id, createdAt, ownerID, title, picID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult? Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
  }) {
    return group?.call(id, createdAt, ownerID, title, picID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, String? iconName, MediaID? picID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID firstUserID,
            UserID secondUserID)?
        dialogue,
    TResult Function(ChatID id, DateTime createdAt, UserID ownerID,
            String title, MediaID? picID)?
        group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(id, createdAt, ownerID, title, picID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class GroupChat implements Chat {
  const factory GroupChat(
      {required final ChatID id,
      required final DateTime createdAt,
      required final UserID ownerID,
      required final String title,
      final MediaID? picID}) = _$GroupChat;

  @override
  ChatID get id;
  @override
  DateTime get createdAt;
  UserID get ownerID;
  String get title;
  MediaID? get picID;
  @override
  @JsonKey(ignore: true)
  _$$GroupChatCopyWith<_$GroupChat> get copyWith =>
      throw _privateConstructorUsedError;
}
