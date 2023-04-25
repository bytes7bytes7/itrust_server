// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_event_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatEventResponse _$ChatEventResponseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'created':
      return CreatedChatEventResponse.fromJson(json);
    case 'deleted':
      return DeletedChatEventResponse.fromJson(json);
    case 'updated':
      return UpdatedChatEventResponse.fromJson(json);
    case 'onlineChanged':
      return OnlineChangedChatEventResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'ChatEventResponse',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ChatEventResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatVM chat) created,
    required TResult Function(ChatID chatID) deleted,
    required TResult Function(ChatVM chat) updated,
    required TResult Function(ChatID chatID, bool isOnline) onlineChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatVM chat)? created,
    TResult? Function(ChatID chatID)? deleted,
    TResult? Function(ChatVM chat)? updated,
    TResult? Function(ChatID chatID, bool isOnline)? onlineChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatVM chat)? created,
    TResult Function(ChatID chatID)? deleted,
    TResult Function(ChatVM chat)? updated,
    TResult Function(ChatID chatID, bool isOnline)? onlineChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedChatEventResponse value) created,
    required TResult Function(DeletedChatEventResponse value) deleted,
    required TResult Function(UpdatedChatEventResponse value) updated,
    required TResult Function(OnlineChangedChatEventResponse value)
        onlineChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResponse value)? created,
    TResult? Function(DeletedChatEventResponse value)? deleted,
    TResult? Function(UpdatedChatEventResponse value)? updated,
    TResult? Function(OnlineChangedChatEventResponse value)? onlineChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResponse value)? created,
    TResult Function(DeletedChatEventResponse value)? deleted,
    TResult Function(UpdatedChatEventResponse value)? updated,
    TResult Function(OnlineChangedChatEventResponse value)? onlineChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventResponseCopyWith<$Res> {
  factory $ChatEventResponseCopyWith(
          ChatEventResponse value, $Res Function(ChatEventResponse) then) =
      _$ChatEventResponseCopyWithImpl<$Res, ChatEventResponse>;
}

/// @nodoc
class _$ChatEventResponseCopyWithImpl<$Res, $Val extends ChatEventResponse>
    implements $ChatEventResponseCopyWith<$Res> {
  _$ChatEventResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreatedChatEventResponseCopyWith<$Res> {
  factory _$$CreatedChatEventResponseCopyWith(_$CreatedChatEventResponse value,
          $Res Function(_$CreatedChatEventResponse) then) =
      __$$CreatedChatEventResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatVM chat});

  $ChatVMCopyWith<$Res> get chat;
}

/// @nodoc
class __$$CreatedChatEventResponseCopyWithImpl<$Res>
    extends _$ChatEventResponseCopyWithImpl<$Res, _$CreatedChatEventResponse>
    implements _$$CreatedChatEventResponseCopyWith<$Res> {
  __$$CreatedChatEventResponseCopyWithImpl(_$CreatedChatEventResponse _value,
      $Res Function(_$CreatedChatEventResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$CreatedChatEventResponse(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatVM,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatVMCopyWith<$Res> get chat {
    return $ChatVMCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedChatEventResponse implements CreatedChatEventResponse {
  const _$CreatedChatEventResponse({required this.chat, final String? $type})
      : $type = $type ?? 'created';

  factory _$CreatedChatEventResponse.fromJson(Map<String, dynamic> json) =>
      _$$CreatedChatEventResponseFromJson(json);

  @override
  final ChatVM chat;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ChatEventResponse.created(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedChatEventResponse &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedChatEventResponseCopyWith<_$CreatedChatEventResponse>
      get copyWith =>
          __$$CreatedChatEventResponseCopyWithImpl<_$CreatedChatEventResponse>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatVM chat) created,
    required TResult Function(ChatID chatID) deleted,
    required TResult Function(ChatVM chat) updated,
    required TResult Function(ChatID chatID, bool isOnline) onlineChanged,
  }) {
    return created(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatVM chat)? created,
    TResult? Function(ChatID chatID)? deleted,
    TResult? Function(ChatVM chat)? updated,
    TResult? Function(ChatID chatID, bool isOnline)? onlineChanged,
  }) {
    return created?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatVM chat)? created,
    TResult Function(ChatID chatID)? deleted,
    TResult Function(ChatVM chat)? updated,
    TResult Function(ChatID chatID, bool isOnline)? onlineChanged,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedChatEventResponse value) created,
    required TResult Function(DeletedChatEventResponse value) deleted,
    required TResult Function(UpdatedChatEventResponse value) updated,
    required TResult Function(OnlineChangedChatEventResponse value)
        onlineChanged,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResponse value)? created,
    TResult? Function(DeletedChatEventResponse value)? deleted,
    TResult? Function(UpdatedChatEventResponse value)? updated,
    TResult? Function(OnlineChangedChatEventResponse value)? onlineChanged,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResponse value)? created,
    TResult Function(DeletedChatEventResponse value)? deleted,
    TResult Function(UpdatedChatEventResponse value)? updated,
    TResult Function(OnlineChangedChatEventResponse value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedChatEventResponseToJson(
      this,
    );
  }
}

abstract class CreatedChatEventResponse implements ChatEventResponse {
  const factory CreatedChatEventResponse({required final ChatVM chat}) =
      _$CreatedChatEventResponse;

  factory CreatedChatEventResponse.fromJson(Map<String, dynamic> json) =
      _$CreatedChatEventResponse.fromJson;

  ChatVM get chat;
  @JsonKey(ignore: true)
  _$$CreatedChatEventResponseCopyWith<_$CreatedChatEventResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedChatEventResponseCopyWith<$Res> {
  factory _$$DeletedChatEventResponseCopyWith(_$DeletedChatEventResponse value,
          $Res Function(_$DeletedChatEventResponse) then) =
      __$$DeletedChatEventResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatID chatID});

  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$DeletedChatEventResponseCopyWithImpl<$Res>
    extends _$ChatEventResponseCopyWithImpl<$Res, _$DeletedChatEventResponse>
    implements _$$DeletedChatEventResponseCopyWith<$Res> {
  __$$DeletedChatEventResponseCopyWithImpl(_$DeletedChatEventResponse _value,
      $Res Function(_$DeletedChatEventResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
  }) {
    return _then(_$DeletedChatEventResponse(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get chatID {
    return $ChatIDCopyWith<$Res>(_value.chatID, (value) {
      return _then(_value.copyWith(chatID: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletedChatEventResponse implements DeletedChatEventResponse {
  const _$DeletedChatEventResponse({required this.chatID, final String? $type})
      : $type = $type ?? 'deleted';

  factory _$DeletedChatEventResponse.fromJson(Map<String, dynamic> json) =>
      _$$DeletedChatEventResponseFromJson(json);

  @override
  final ChatID chatID;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ChatEventResponse.deleted(chatID: $chatID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedChatEventResponse &&
            (identical(other.chatID, chatID) || other.chatID == chatID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedChatEventResponseCopyWith<_$DeletedChatEventResponse>
      get copyWith =>
          __$$DeletedChatEventResponseCopyWithImpl<_$DeletedChatEventResponse>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatVM chat) created,
    required TResult Function(ChatID chatID) deleted,
    required TResult Function(ChatVM chat) updated,
    required TResult Function(ChatID chatID, bool isOnline) onlineChanged,
  }) {
    return deleted(chatID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatVM chat)? created,
    TResult? Function(ChatID chatID)? deleted,
    TResult? Function(ChatVM chat)? updated,
    TResult? Function(ChatID chatID, bool isOnline)? onlineChanged,
  }) {
    return deleted?.call(chatID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatVM chat)? created,
    TResult Function(ChatID chatID)? deleted,
    TResult Function(ChatVM chat)? updated,
    TResult Function(ChatID chatID, bool isOnline)? onlineChanged,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(chatID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedChatEventResponse value) created,
    required TResult Function(DeletedChatEventResponse value) deleted,
    required TResult Function(UpdatedChatEventResponse value) updated,
    required TResult Function(OnlineChangedChatEventResponse value)
        onlineChanged,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResponse value)? created,
    TResult? Function(DeletedChatEventResponse value)? deleted,
    TResult? Function(UpdatedChatEventResponse value)? updated,
    TResult? Function(OnlineChangedChatEventResponse value)? onlineChanged,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResponse value)? created,
    TResult Function(DeletedChatEventResponse value)? deleted,
    TResult Function(UpdatedChatEventResponse value)? updated,
    TResult Function(OnlineChangedChatEventResponse value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletedChatEventResponseToJson(
      this,
    );
  }
}

abstract class DeletedChatEventResponse implements ChatEventResponse {
  const factory DeletedChatEventResponse({required final ChatID chatID}) =
      _$DeletedChatEventResponse;

  factory DeletedChatEventResponse.fromJson(Map<String, dynamic> json) =
      _$DeletedChatEventResponse.fromJson;

  ChatID get chatID;
  @JsonKey(ignore: true)
  _$$DeletedChatEventResponseCopyWith<_$DeletedChatEventResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedChatEventResponseCopyWith<$Res> {
  factory _$$UpdatedChatEventResponseCopyWith(_$UpdatedChatEventResponse value,
          $Res Function(_$UpdatedChatEventResponse) then) =
      __$$UpdatedChatEventResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatVM chat});

  $ChatVMCopyWith<$Res> get chat;
}

/// @nodoc
class __$$UpdatedChatEventResponseCopyWithImpl<$Res>
    extends _$ChatEventResponseCopyWithImpl<$Res, _$UpdatedChatEventResponse>
    implements _$$UpdatedChatEventResponseCopyWith<$Res> {
  __$$UpdatedChatEventResponseCopyWithImpl(_$UpdatedChatEventResponse _value,
      $Res Function(_$UpdatedChatEventResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$UpdatedChatEventResponse(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatVM,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatVMCopyWith<$Res> get chat {
    return $ChatVMCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatedChatEventResponse implements UpdatedChatEventResponse {
  const _$UpdatedChatEventResponse({required this.chat, final String? $type})
      : $type = $type ?? 'updated';

  factory _$UpdatedChatEventResponse.fromJson(Map<String, dynamic> json) =>
      _$$UpdatedChatEventResponseFromJson(json);

  @override
  final ChatVM chat;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ChatEventResponse.updated(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedChatEventResponse &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedChatEventResponseCopyWith<_$UpdatedChatEventResponse>
      get copyWith =>
          __$$UpdatedChatEventResponseCopyWithImpl<_$UpdatedChatEventResponse>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatVM chat) created,
    required TResult Function(ChatID chatID) deleted,
    required TResult Function(ChatVM chat) updated,
    required TResult Function(ChatID chatID, bool isOnline) onlineChanged,
  }) {
    return updated(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatVM chat)? created,
    TResult? Function(ChatID chatID)? deleted,
    TResult? Function(ChatVM chat)? updated,
    TResult? Function(ChatID chatID, bool isOnline)? onlineChanged,
  }) {
    return updated?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatVM chat)? created,
    TResult Function(ChatID chatID)? deleted,
    TResult Function(ChatVM chat)? updated,
    TResult Function(ChatID chatID, bool isOnline)? onlineChanged,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedChatEventResponse value) created,
    required TResult Function(DeletedChatEventResponse value) deleted,
    required TResult Function(UpdatedChatEventResponse value) updated,
    required TResult Function(OnlineChangedChatEventResponse value)
        onlineChanged,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResponse value)? created,
    TResult? Function(DeletedChatEventResponse value)? deleted,
    TResult? Function(UpdatedChatEventResponse value)? updated,
    TResult? Function(OnlineChangedChatEventResponse value)? onlineChanged,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResponse value)? created,
    TResult Function(DeletedChatEventResponse value)? deleted,
    TResult Function(UpdatedChatEventResponse value)? updated,
    TResult Function(OnlineChangedChatEventResponse value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatedChatEventResponseToJson(
      this,
    );
  }
}

abstract class UpdatedChatEventResponse implements ChatEventResponse {
  const factory UpdatedChatEventResponse({required final ChatVM chat}) =
      _$UpdatedChatEventResponse;

  factory UpdatedChatEventResponse.fromJson(Map<String, dynamic> json) =
      _$UpdatedChatEventResponse.fromJson;

  ChatVM get chat;
  @JsonKey(ignore: true)
  _$$UpdatedChatEventResponseCopyWith<_$UpdatedChatEventResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineChangedChatEventResponseCopyWith<$Res> {
  factory _$$OnlineChangedChatEventResponseCopyWith(
          _$OnlineChangedChatEventResponse value,
          $Res Function(_$OnlineChangedChatEventResponse) then) =
      __$$OnlineChangedChatEventResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatID chatID, bool isOnline});

  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$OnlineChangedChatEventResponseCopyWithImpl<$Res>
    extends _$ChatEventResponseCopyWithImpl<$Res,
        _$OnlineChangedChatEventResponse>
    implements _$$OnlineChangedChatEventResponseCopyWith<$Res> {
  __$$OnlineChangedChatEventResponseCopyWithImpl(
      _$OnlineChangedChatEventResponse _value,
      $Res Function(_$OnlineChangedChatEventResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? isOnline = null,
  }) {
    return _then(_$OnlineChangedChatEventResponse(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get chatID {
    return $ChatIDCopyWith<$Res>(_value.chatID, (value) {
      return _then(_value.copyWith(chatID: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlineChangedChatEventResponse
    implements OnlineChangedChatEventResponse {
  const _$OnlineChangedChatEventResponse(
      {required this.chatID, required this.isOnline, final String? $type})
      : $type = $type ?? 'onlineChanged';

  factory _$OnlineChangedChatEventResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$OnlineChangedChatEventResponseFromJson(json);

  @override
  final ChatID chatID;
  @override
  final bool isOnline;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ChatEventResponse.onlineChanged(chatID: $chatID, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineChangedChatEventResponse &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatID, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineChangedChatEventResponseCopyWith<_$OnlineChangedChatEventResponse>
      get copyWith => __$$OnlineChangedChatEventResponseCopyWithImpl<
          _$OnlineChangedChatEventResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatVM chat) created,
    required TResult Function(ChatID chatID) deleted,
    required TResult Function(ChatVM chat) updated,
    required TResult Function(ChatID chatID, bool isOnline) onlineChanged,
  }) {
    return onlineChanged(chatID, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatVM chat)? created,
    TResult? Function(ChatID chatID)? deleted,
    TResult? Function(ChatVM chat)? updated,
    TResult? Function(ChatID chatID, bool isOnline)? onlineChanged,
  }) {
    return onlineChanged?.call(chatID, isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatVM chat)? created,
    TResult Function(ChatID chatID)? deleted,
    TResult Function(ChatVM chat)? updated,
    TResult Function(ChatID chatID, bool isOnline)? onlineChanged,
    required TResult orElse(),
  }) {
    if (onlineChanged != null) {
      return onlineChanged(chatID, isOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatedChatEventResponse value) created,
    required TResult Function(DeletedChatEventResponse value) deleted,
    required TResult Function(UpdatedChatEventResponse value) updated,
    required TResult Function(OnlineChangedChatEventResponse value)
        onlineChanged,
  }) {
    return onlineChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResponse value)? created,
    TResult? Function(DeletedChatEventResponse value)? deleted,
    TResult? Function(UpdatedChatEventResponse value)? updated,
    TResult? Function(OnlineChangedChatEventResponse value)? onlineChanged,
  }) {
    return onlineChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResponse value)? created,
    TResult Function(DeletedChatEventResponse value)? deleted,
    TResult Function(UpdatedChatEventResponse value)? updated,
    TResult Function(OnlineChangedChatEventResponse value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (onlineChanged != null) {
      return onlineChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineChangedChatEventResponseToJson(
      this,
    );
  }
}

abstract class OnlineChangedChatEventResponse implements ChatEventResponse {
  const factory OnlineChangedChatEventResponse(
      {required final ChatID chatID,
      required final bool isOnline}) = _$OnlineChangedChatEventResponse;

  factory OnlineChangedChatEventResponse.fromJson(Map<String, dynamic> json) =
      _$OnlineChangedChatEventResponse.fromJson;

  ChatID get chatID;
  bool get isOnline;
  @JsonKey(ignore: true)
  _$$OnlineChangedChatEventResponseCopyWith<_$OnlineChangedChatEventResponse>
      get copyWith => throw _privateConstructorUsedError;
}
