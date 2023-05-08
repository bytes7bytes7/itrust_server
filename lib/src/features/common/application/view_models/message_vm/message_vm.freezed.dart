// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageVM _$MessageVMFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'info':
      return InfoMessageVM.fromJson(json);
    case 'user':
      return UserMessageVM.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'MessageVM', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MessageVM {
  MessageID get id => throw _privateConstructorUsedError;
  ChatID get chatID => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;
  bool get isReadByMe => throw _privateConstructorUsedError;
  DateTime? get willBeBurntAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessageVM value) info,
    required TResult Function(UserMessageVM value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessageVM value)? info,
    TResult? Function(UserMessageVM value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessageVM value)? info,
    TResult Function(UserMessageVM value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageVMCopyWith<MessageVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageVMCopyWith<$Res> {
  factory $MessageVMCopyWith(MessageVM value, $Res Function(MessageVM) then) =
      _$MessageVMCopyWithImpl<$Res, MessageVM>;
  @useResult
  $Res call(
      {MessageID id,
      ChatID chatID,
      DateTime sentAt,
      bool isReadByMe,
      DateTime? willBeBurntAt});

  $MessageIDCopyWith<$Res> get id;
  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class _$MessageVMCopyWithImpl<$Res, $Val extends MessageVM>
    implements $MessageVMCopyWith<$Res> {
  _$MessageVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? sentAt = null,
    Object? isReadByMe = null,
    Object? willBeBurntAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageID,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isReadByMe: null == isReadByMe
          ? _value.isReadByMe
          : isReadByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageIDCopyWith<$Res> get id {
    return $MessageIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get chatID {
    return $ChatIDCopyWith<$Res>(_value.chatID, (value) {
      return _then(_value.copyWith(chatID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InfoMessageVMCopyWith<$Res>
    implements $MessageVMCopyWith<$Res> {
  factory _$$InfoMessageVMCopyWith(
          _$InfoMessageVM value, $Res Function(_$InfoMessageVM) then) =
      __$$InfoMessageVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageID id,
      ChatID chatID,
      DateTime sentAt,
      bool isReadByMe,
      String markUp,
      Map<String, String> markUpData,
      DateTime? willBeBurntAt});

  @override
  $MessageIDCopyWith<$Res> get id;
  @override
  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$InfoMessageVMCopyWithImpl<$Res>
    extends _$MessageVMCopyWithImpl<$Res, _$InfoMessageVM>
    implements _$$InfoMessageVMCopyWith<$Res> {
  __$$InfoMessageVMCopyWithImpl(
      _$InfoMessageVM _value, $Res Function(_$InfoMessageVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? sentAt = null,
    Object? isReadByMe = null,
    Object? markUp = null,
    Object? markUpData = null,
    Object? willBeBurntAt = freezed,
  }) {
    return _then(_$InfoMessageVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageID,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isReadByMe: null == isReadByMe
          ? _value.isReadByMe
          : isReadByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      markUp: null == markUp
          ? _value.markUp
          : markUp // ignore: cast_nullable_to_non_nullable
              as String,
      markUpData: null == markUpData
          ? _value._markUpData
          : markUpData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoMessageVM implements InfoMessageVM {
  const _$InfoMessageVM(
      {required this.id,
      required this.chatID,
      required this.sentAt,
      required this.isReadByMe,
      required this.markUp,
      required final Map<String, String> markUpData,
      this.willBeBurntAt,
      final String? $type})
      : _markUpData = markUpData,
        $type = $type ?? 'info';

  factory _$InfoMessageVM.fromJson(Map<String, dynamic> json) =>
      _$$InfoMessageVMFromJson(json);

  @override
  final MessageID id;
  @override
  final ChatID chatID;
  @override
  final DateTime sentAt;
  @override
  final bool isReadByMe;
  @override
  final String markUp;
  final Map<String, String> _markUpData;
  @override
  Map<String, String> get markUpData {
    if (_markUpData is EqualUnmodifiableMapView) return _markUpData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_markUpData);
  }

  @override
  final DateTime? willBeBurntAt;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MessageVM.info(id: $id, chatID: $chatID, sentAt: $sentAt, isReadByMe: $isReadByMe, markUp: $markUp, markUpData: $markUpData, willBeBurntAt: $willBeBurntAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoMessageVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isReadByMe, isReadByMe) ||
                other.isReadByMe == isReadByMe) &&
            (identical(other.markUp, markUp) || other.markUp == markUp) &&
            const DeepCollectionEquality()
                .equals(other._markUpData, _markUpData) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, chatID, sentAt, isReadByMe,
      markUp, const DeepCollectionEquality().hash(_markUpData), willBeBurntAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoMessageVMCopyWith<_$InfoMessageVM> get copyWith =>
      __$$InfoMessageVMCopyWithImpl<_$InfoMessageVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) {
    return info(
        id, chatID, sentAt, isReadByMe, markUp, markUpData, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) {
    return info?.call(
        id, chatID, sentAt, isReadByMe, markUp, markUpData, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(
          id, chatID, sentAt, isReadByMe, markUp, markUpData, willBeBurntAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessageVM value) info,
    required TResult Function(UserMessageVM value) user,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessageVM value)? info,
    TResult? Function(UserMessageVM value)? user,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessageVM value)? info,
    TResult Function(UserMessageVM value)? user,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoMessageVMToJson(
      this,
    );
  }
}

abstract class InfoMessageVM implements MessageVM {
  const factory InfoMessageVM(
      {required final MessageID id,
      required final ChatID chatID,
      required final DateTime sentAt,
      required final bool isReadByMe,
      required final String markUp,
      required final Map<String, String> markUpData,
      final DateTime? willBeBurntAt}) = _$InfoMessageVM;

  factory InfoMessageVM.fromJson(Map<String, dynamic> json) =
      _$InfoMessageVM.fromJson;

  @override
  MessageID get id;
  @override
  ChatID get chatID;
  @override
  DateTime get sentAt;
  @override
  bool get isReadByMe;
  String get markUp;
  Map<String, String> get markUpData;
  @override
  DateTime? get willBeBurntAt;
  @override
  @JsonKey(ignore: true)
  _$$InfoMessageVMCopyWith<_$InfoMessageVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserMessageVMCopyWith<$Res>
    implements $MessageVMCopyWith<$Res> {
  factory _$$UserMessageVMCopyWith(
          _$UserMessageVM value, $Res Function(_$UserMessageVM) then) =
      __$$UserMessageVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageID id,
      ChatID chatID,
      UserID senderID,
      DateTime sentAt,
      bool isReadByMe,
      String text,
      List<MediaID> mediaIDs,
      DateTime? willBeBurntAt,
      DateTime? modifiedAt});

  @override
  $MessageIDCopyWith<$Res> get id;
  @override
  $ChatIDCopyWith<$Res> get chatID;
  $UserIDCopyWith<$Res> get senderID;
}

/// @nodoc
class __$$UserMessageVMCopyWithImpl<$Res>
    extends _$MessageVMCopyWithImpl<$Res, _$UserMessageVM>
    implements _$$UserMessageVMCopyWith<$Res> {
  __$$UserMessageVMCopyWithImpl(
      _$UserMessageVM _value, $Res Function(_$UserMessageVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? senderID = null,
    Object? sentAt = null,
    Object? isReadByMe = null,
    Object? text = null,
    Object? mediaIDs = null,
    Object? willBeBurntAt = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_$UserMessageVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageID,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      senderID: null == senderID
          ? _value.senderID
          : senderID // ignore: cast_nullable_to_non_nullable
              as UserID,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isReadByMe: null == isReadByMe
          ? _value.isReadByMe
          : isReadByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mediaIDs: null == mediaIDs
          ? _value._mediaIDs
          : mediaIDs // ignore: cast_nullable_to_non_nullable
              as List<MediaID>,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get senderID {
    return $UserIDCopyWith<$Res>(_value.senderID, (value) {
      return _then(_value.copyWith(senderID: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMessageVM implements UserMessageVM {
  const _$UserMessageVM(
      {required this.id,
      required this.chatID,
      required this.senderID,
      required this.sentAt,
      required this.isReadByMe,
      required this.text,
      required final List<MediaID> mediaIDs,
      this.willBeBurntAt,
      this.modifiedAt,
      final String? $type})
      : _mediaIDs = mediaIDs,
        $type = $type ?? 'user';

  factory _$UserMessageVM.fromJson(Map<String, dynamic> json) =>
      _$$UserMessageVMFromJson(json);

  @override
  final MessageID id;
  @override
  final ChatID chatID;
  @override
  final UserID senderID;
  @override
  final DateTime sentAt;
  @override
  final bool isReadByMe;
  @override
  final String text;
  final List<MediaID> _mediaIDs;
  @override
  List<MediaID> get mediaIDs {
    if (_mediaIDs is EqualUnmodifiableListView) return _mediaIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaIDs);
  }

  @override
  final DateTime? willBeBurntAt;
  @override
  final DateTime? modifiedAt;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MessageVM.user(id: $id, chatID: $chatID, senderID: $senderID, sentAt: $sentAt, isReadByMe: $isReadByMe, text: $text, mediaIDs: $mediaIDs, willBeBurntAt: $willBeBurntAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMessageVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.senderID, senderID) ||
                other.senderID == senderID) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isReadByMe, isReadByMe) ||
                other.isReadByMe == isReadByMe) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._mediaIDs, _mediaIDs) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatID,
      senderID,
      sentAt,
      isReadByMe,
      text,
      const DeepCollectionEquality().hash(_mediaIDs),
      willBeBurntAt,
      modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMessageVMCopyWith<_$UserMessageVM> get copyWith =>
      __$$UserMessageVMCopyWithImpl<_$UserMessageVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) {
    return user(id, chatID, senderID, sentAt, isReadByMe, text, mediaIDs,
        willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) {
    return user?.call(id, chatID, senderID, sentAt, isReadByMe, text, mediaIDs,
        willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadByMe,
            String text,
            List<MediaID> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id, chatID, senderID, sentAt, isReadByMe, text, mediaIDs,
          willBeBurntAt, modifiedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessageVM value) info,
    required TResult Function(UserMessageVM value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessageVM value)? info,
    TResult? Function(UserMessageVM value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessageVM value)? info,
    TResult Function(UserMessageVM value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMessageVMToJson(
      this,
    );
  }
}

abstract class UserMessageVM implements MessageVM {
  const factory UserMessageVM(
      {required final MessageID id,
      required final ChatID chatID,
      required final UserID senderID,
      required final DateTime sentAt,
      required final bool isReadByMe,
      required final String text,
      required final List<MediaID> mediaIDs,
      final DateTime? willBeBurntAt,
      final DateTime? modifiedAt}) = _$UserMessageVM;

  factory UserMessageVM.fromJson(Map<String, dynamic> json) =
      _$UserMessageVM.fromJson;

  @override
  MessageID get id;
  @override
  ChatID get chatID;
  UserID get senderID;
  @override
  DateTime get sentAt;
  @override
  bool get isReadByMe;
  String get text;
  List<MediaID> get mediaIDs;
  @override
  DateTime? get willBeBurntAt;
  DateTime? get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserMessageVMCopyWith<_$UserMessageVM> get copyWith =>
      throw _privateConstructorUsedError;
}
