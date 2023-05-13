// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatVM _$ChatVMFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'monologue':
      return MonologueChatVM.fromJson(json);
    case 'dialogue':
      return DialogueChatVM.fromJson(json);
    case 'group':
      return GroupChatVM.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'ChatVM', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ChatVM {
  ChatID get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  MessageID? get lastMessageID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)
        dialogue,
    required TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult? Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatVMCopyWith<ChatVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatVMCopyWith<$Res> {
  factory $ChatVMCopyWith(ChatVM value, $Res Function(ChatVM) then) =
      _$ChatVMCopyWithImpl<$Res, ChatVM>;
  @useResult
  $Res call({ChatID id, DateTime createdAt, MessageID? lastMessageID});

  $ChatIDCopyWith<$Res> get id;
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class _$ChatVMCopyWithImpl<$Res, $Val extends ChatVM>
    implements $ChatVMCopyWith<$Res> {
  _$ChatVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? lastMessageID = freezed,
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
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
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
  $MessageIDCopyWith<$Res>? get lastMessageID {
    if (_value.lastMessageID == null) {
      return null;
    }

    return $MessageIDCopyWith<$Res>(_value.lastMessageID!, (value) {
      return _then(_value.copyWith(lastMessageID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonologueChatVMCopyWith<$Res>
    implements $ChatVMCopyWith<$Res> {
  factory _$$MonologueChatVMCopyWith(
          _$MonologueChatVM value, $Res Function(_$MonologueChatVM) then) =
      __$$MonologueChatVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      DateTime createdAt,
      String title,
      String? iconName,
      MediaVM? pic,
      MessageID? lastMessageID});

  @override
  $ChatIDCopyWith<$Res> get id;
  $MediaVMCopyWith<$Res>? get pic;
  @override
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class __$$MonologueChatVMCopyWithImpl<$Res>
    extends _$ChatVMCopyWithImpl<$Res, _$MonologueChatVM>
    implements _$$MonologueChatVMCopyWith<$Res> {
  __$$MonologueChatVMCopyWithImpl(
      _$MonologueChatVM _value, $Res Function(_$MonologueChatVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? title = null,
    Object? iconName = freezed,
    Object? pic = freezed,
    Object? lastMessageID = freezed,
  }) {
    return _then(_$MonologueChatVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as MediaVM?,
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaVMCopyWith<$Res>? get pic {
    if (_value.pic == null) {
      return null;
    }

    return $MediaVMCopyWith<$Res>(_value.pic!, (value) {
      return _then(_value.copyWith(pic: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MonologueChatVM implements MonologueChatVM {
  const _$MonologueChatVM(
      {required this.id,
      required this.createdAt,
      required this.title,
      this.iconName,
      this.pic,
      this.lastMessageID,
      final String? $type})
      : $type = $type ?? 'monologue';

  factory _$MonologueChatVM.fromJson(Map<String, dynamic> json) =>
      _$$MonologueChatVMFromJson(json);

  @override
  final ChatID id;
  @override
  final DateTime createdAt;
  @override
  final String title;
  @override
  final String? iconName;
  @override
  final MediaVM? pic;
  @override
  final MessageID? lastMessageID;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ChatVM.monologue(id: $id, createdAt: $createdAt, title: $title, iconName: $iconName, pic: $pic, lastMessageID: $lastMessageID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonologueChatVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.lastMessageID, lastMessageID) ||
                other.lastMessageID == lastMessageID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, title, iconName, pic, lastMessageID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonologueChatVMCopyWith<_$MonologueChatVM> get copyWith =>
      __$$MonologueChatVMCopyWithImpl<_$MonologueChatVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)
        dialogue,
    required TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)
        group,
  }) {
    return monologue(id, createdAt, title, iconName, pic, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult? Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
  }) {
    return monologue?.call(id, createdAt, title, iconName, pic, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(id, createdAt, title, iconName, pic, lastMessageID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) {
    return monologue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) {
    return monologue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MonologueChatVMToJson(
      this,
    );
  }
}

abstract class MonologueChatVM implements ChatVM {
  const factory MonologueChatVM(
      {required final ChatID id,
      required final DateTime createdAt,
      required final String title,
      final String? iconName,
      final MediaVM? pic,
      final MessageID? lastMessageID}) = _$MonologueChatVM;

  factory MonologueChatVM.fromJson(Map<String, dynamic> json) =
      _$MonologueChatVM.fromJson;

  @override
  ChatID get id;
  @override
  DateTime get createdAt;
  String get title;
  String? get iconName;
  MediaVM? get pic;
  @override
  MessageID? get lastMessageID;
  @override
  @JsonKey(ignore: true)
  _$$MonologueChatVMCopyWith<_$MonologueChatVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogueChatVMCopyWith<$Res>
    implements $ChatVMCopyWith<$Res> {
  factory _$$DialogueChatVMCopyWith(
          _$DialogueChatVM value, $Res Function(_$DialogueChatVM) then) =
      __$$DialogueChatVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      DateTime createdAt,
      UserID partnerID,
      int unreadAmount,
      MessageID? lastMessageID});

  @override
  $ChatIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get partnerID;
  @override
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class __$$DialogueChatVMCopyWithImpl<$Res>
    extends _$ChatVMCopyWithImpl<$Res, _$DialogueChatVM>
    implements _$$DialogueChatVMCopyWith<$Res> {
  __$$DialogueChatVMCopyWithImpl(
      _$DialogueChatVM _value, $Res Function(_$DialogueChatVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? partnerID = null,
    Object? unreadAmount = null,
    Object? lastMessageID = freezed,
  }) {
    return _then(_$DialogueChatVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      partnerID: null == partnerID
          ? _value.partnerID
          : partnerID // ignore: cast_nullable_to_non_nullable
              as UserID,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get partnerID {
    return $UserIDCopyWith<$Res>(_value.partnerID, (value) {
      return _then(_value.copyWith(partnerID: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueChatVM implements DialogueChatVM {
  const _$DialogueChatVM(
      {required this.id,
      required this.createdAt,
      required this.partnerID,
      required this.unreadAmount,
      this.lastMessageID,
      final String? $type})
      : $type = $type ?? 'dialogue';

  factory _$DialogueChatVM.fromJson(Map<String, dynamic> json) =>
      _$$DialogueChatVMFromJson(json);

  @override
  final ChatID id;
  @override
  final DateTime createdAt;
  @override
  final UserID partnerID;
  @override
  final int unreadAmount;
  @override
  final MessageID? lastMessageID;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ChatVM.dialogue(id: $id, createdAt: $createdAt, partnerID: $partnerID, unreadAmount: $unreadAmount, lastMessageID: $lastMessageID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueChatVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.partnerID, partnerID) ||
                other.partnerID == partnerID) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.lastMessageID, lastMessageID) ||
                other.lastMessageID == lastMessageID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, partnerID, unreadAmount, lastMessageID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueChatVMCopyWith<_$DialogueChatVM> get copyWith =>
      __$$DialogueChatVMCopyWithImpl<_$DialogueChatVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)
        dialogue,
    required TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)
        group,
  }) {
    return dialogue(id, createdAt, partnerID, unreadAmount, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult? Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
  }) {
    return dialogue?.call(
        id, createdAt, partnerID, unreadAmount, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(id, createdAt, partnerID, unreadAmount, lastMessageID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) {
    return dialogue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) {
    return dialogue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueChatVMToJson(
      this,
    );
  }
}

abstract class DialogueChatVM implements ChatVM {
  const factory DialogueChatVM(
      {required final ChatID id,
      required final DateTime createdAt,
      required final UserID partnerID,
      required final int unreadAmount,
      final MessageID? lastMessageID}) = _$DialogueChatVM;

  factory DialogueChatVM.fromJson(Map<String, dynamic> json) =
      _$DialogueChatVM.fromJson;

  @override
  ChatID get id;
  @override
  DateTime get createdAt;
  UserID get partnerID;
  int get unreadAmount;
  @override
  MessageID? get lastMessageID;
  @override
  @JsonKey(ignore: true)
  _$$DialogueChatVMCopyWith<_$DialogueChatVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupChatVMCopyWith<$Res> implements $ChatVMCopyWith<$Res> {
  factory _$$GroupChatVMCopyWith(
          _$GroupChatVM value, $Res Function(_$GroupChatVM) then) =
      __$$GroupChatVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      DateTime createdAt,
      UserID ownerID,
      int participantsAmount,
      String title,
      int unreadAmount,
      MediaVM? pic,
      MessageID? lastMessageID});

  @override
  $ChatIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get ownerID;
  $MediaVMCopyWith<$Res>? get pic;
  @override
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class __$$GroupChatVMCopyWithImpl<$Res>
    extends _$ChatVMCopyWithImpl<$Res, _$GroupChatVM>
    implements _$$GroupChatVMCopyWith<$Res> {
  __$$GroupChatVMCopyWithImpl(
      _$GroupChatVM _value, $Res Function(_$GroupChatVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? ownerID = null,
    Object? participantsAmount = null,
    Object? title = null,
    Object? unreadAmount = null,
    Object? pic = freezed,
    Object? lastMessageID = freezed,
  }) {
    return _then(_$GroupChatVM(
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
      participantsAmount: null == participantsAmount
          ? _value.participantsAmount
          : participantsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as MediaVM?,
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
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
  $MediaVMCopyWith<$Res>? get pic {
    if (_value.pic == null) {
      return null;
    }

    return $MediaVMCopyWith<$Res>(_value.pic!, (value) {
      return _then(_value.copyWith(pic: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupChatVM implements GroupChatVM {
  const _$GroupChatVM(
      {required this.id,
      required this.createdAt,
      required this.ownerID,
      required this.participantsAmount,
      required this.title,
      required this.unreadAmount,
      this.pic,
      this.lastMessageID,
      final String? $type})
      : $type = $type ?? 'group';

  factory _$GroupChatVM.fromJson(Map<String, dynamic> json) =>
      _$$GroupChatVMFromJson(json);

  @override
  final ChatID id;
  @override
  final DateTime createdAt;
  @override
  final UserID ownerID;
  @override
  final int participantsAmount;
  @override
  final String title;
  @override
  final int unreadAmount;
  @override
  final MediaVM? pic;
  @override
  final MessageID? lastMessageID;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ChatVM.group(id: $id, createdAt: $createdAt, ownerID: $ownerID, participantsAmount: $participantsAmount, title: $title, unreadAmount: $unreadAmount, pic: $pic, lastMessageID: $lastMessageID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupChatVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            (identical(other.participantsAmount, participantsAmount) ||
                other.participantsAmount == participantsAmount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.lastMessageID, lastMessageID) ||
                other.lastMessageID == lastMessageID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, ownerID,
      participantsAmount, title, unreadAmount, pic, lastMessageID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupChatVMCopyWith<_$GroupChatVM> get copyWith =>
      __$$GroupChatVMCopyWithImpl<_$GroupChatVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)
        monologue,
    required TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)
        dialogue,
    required TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)
        group,
  }) {
    return group(id, createdAt, ownerID, participantsAmount, title,
        unreadAmount, pic, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult? Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult? Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
  }) {
    return group?.call(id, createdAt, ownerID, participantsAmount, title,
        unreadAmount, pic, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, DateTime createdAt, String title,
            String? iconName, MediaVM? pic, MessageID? lastMessageID)?
        monologue,
    TResult Function(ChatID id, DateTime createdAt, UserID partnerID,
            int unreadAmount, MessageID? lastMessageID)?
        dialogue,
    TResult Function(
            ChatID id,
            DateTime createdAt,
            UserID ownerID,
            int participantsAmount,
            String title,
            int unreadAmount,
            MediaVM? pic,
            MessageID? lastMessageID)?
        group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(id, createdAt, ownerID, participantsAmount, title,
          unreadAmount, pic, lastMessageID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupChatVMToJson(
      this,
    );
  }
}

abstract class GroupChatVM implements ChatVM {
  const factory GroupChatVM(
      {required final ChatID id,
      required final DateTime createdAt,
      required final UserID ownerID,
      required final int participantsAmount,
      required final String title,
      required final int unreadAmount,
      final MediaVM? pic,
      final MessageID? lastMessageID}) = _$GroupChatVM;

  factory GroupChatVM.fromJson(Map<String, dynamic> json) =
      _$GroupChatVM.fromJson;

  @override
  ChatID get id;
  @override
  DateTime get createdAt;
  UserID get ownerID;
  int get participantsAmount;
  String get title;
  int get unreadAmount;
  MediaVM? get pic;
  @override
  MessageID? get lastMessageID;
  @override
  @JsonKey(ignore: true)
  _$$GroupChatVMCopyWith<_$GroupChatVM> get copyWith =>
      throw _privateConstructorUsedError;
}
