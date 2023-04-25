// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_event_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEventResult {
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
    required TResult Function(CreatedChatEventResult value) created,
    required TResult Function(DeletedChatEventResult value) deleted,
    required TResult Function(UpdatedChatEventResult value) updated,
    required TResult Function(OnlineChangedChatEventResult value) onlineChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResult value)? created,
    TResult? Function(DeletedChatEventResult value)? deleted,
    TResult? Function(UpdatedChatEventResult value)? updated,
    TResult? Function(OnlineChangedChatEventResult value)? onlineChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResult value)? created,
    TResult Function(DeletedChatEventResult value)? deleted,
    TResult Function(UpdatedChatEventResult value)? updated,
    TResult Function(OnlineChangedChatEventResult value)? onlineChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventResultCopyWith<$Res> {
  factory $ChatEventResultCopyWith(
          ChatEventResult value, $Res Function(ChatEventResult) then) =
      _$ChatEventResultCopyWithImpl<$Res, ChatEventResult>;
}

/// @nodoc
class _$ChatEventResultCopyWithImpl<$Res, $Val extends ChatEventResult>
    implements $ChatEventResultCopyWith<$Res> {
  _$ChatEventResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreatedChatEventResultCopyWith<$Res> {
  factory _$$CreatedChatEventResultCopyWith(_$CreatedChatEventResult value,
          $Res Function(_$CreatedChatEventResult) then) =
      __$$CreatedChatEventResultCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatVM chat});

  $ChatVMCopyWith<$Res> get chat;
}

/// @nodoc
class __$$CreatedChatEventResultCopyWithImpl<$Res>
    extends _$ChatEventResultCopyWithImpl<$Res, _$CreatedChatEventResult>
    implements _$$CreatedChatEventResultCopyWith<$Res> {
  __$$CreatedChatEventResultCopyWithImpl(_$CreatedChatEventResult _value,
      $Res Function(_$CreatedChatEventResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$CreatedChatEventResult(
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

class _$CreatedChatEventResult implements CreatedChatEventResult {
  const _$CreatedChatEventResult({required this.chat});

  @override
  final ChatVM chat;

  @override
  String toString() {
    return 'ChatEventResult.created(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedChatEventResult &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedChatEventResultCopyWith<_$CreatedChatEventResult> get copyWith =>
      __$$CreatedChatEventResultCopyWithImpl<_$CreatedChatEventResult>(
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
    required TResult Function(CreatedChatEventResult value) created,
    required TResult Function(DeletedChatEventResult value) deleted,
    required TResult Function(UpdatedChatEventResult value) updated,
    required TResult Function(OnlineChangedChatEventResult value) onlineChanged,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResult value)? created,
    TResult? Function(DeletedChatEventResult value)? deleted,
    TResult? Function(UpdatedChatEventResult value)? updated,
    TResult? Function(OnlineChangedChatEventResult value)? onlineChanged,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResult value)? created,
    TResult Function(DeletedChatEventResult value)? deleted,
    TResult Function(UpdatedChatEventResult value)? updated,
    TResult Function(OnlineChangedChatEventResult value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CreatedChatEventResult implements ChatEventResult {
  const factory CreatedChatEventResult({required final ChatVM chat}) =
      _$CreatedChatEventResult;

  ChatVM get chat;
  @JsonKey(ignore: true)
  _$$CreatedChatEventResultCopyWith<_$CreatedChatEventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedChatEventResultCopyWith<$Res> {
  factory _$$DeletedChatEventResultCopyWith(_$DeletedChatEventResult value,
          $Res Function(_$DeletedChatEventResult) then) =
      __$$DeletedChatEventResultCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatID chatID});

  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$DeletedChatEventResultCopyWithImpl<$Res>
    extends _$ChatEventResultCopyWithImpl<$Res, _$DeletedChatEventResult>
    implements _$$DeletedChatEventResultCopyWith<$Res> {
  __$$DeletedChatEventResultCopyWithImpl(_$DeletedChatEventResult _value,
      $Res Function(_$DeletedChatEventResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
  }) {
    return _then(_$DeletedChatEventResult(
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

class _$DeletedChatEventResult implements DeletedChatEventResult {
  const _$DeletedChatEventResult({required this.chatID});

  @override
  final ChatID chatID;

  @override
  String toString() {
    return 'ChatEventResult.deleted(chatID: $chatID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedChatEventResult &&
            (identical(other.chatID, chatID) || other.chatID == chatID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedChatEventResultCopyWith<_$DeletedChatEventResult> get copyWith =>
      __$$DeletedChatEventResultCopyWithImpl<_$DeletedChatEventResult>(
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
    required TResult Function(CreatedChatEventResult value) created,
    required TResult Function(DeletedChatEventResult value) deleted,
    required TResult Function(UpdatedChatEventResult value) updated,
    required TResult Function(OnlineChangedChatEventResult value) onlineChanged,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResult value)? created,
    TResult? Function(DeletedChatEventResult value)? deleted,
    TResult? Function(UpdatedChatEventResult value)? updated,
    TResult? Function(OnlineChangedChatEventResult value)? onlineChanged,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResult value)? created,
    TResult Function(DeletedChatEventResult value)? deleted,
    TResult Function(UpdatedChatEventResult value)? updated,
    TResult Function(OnlineChangedChatEventResult value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeletedChatEventResult implements ChatEventResult {
  const factory DeletedChatEventResult({required final ChatID chatID}) =
      _$DeletedChatEventResult;

  ChatID get chatID;
  @JsonKey(ignore: true)
  _$$DeletedChatEventResultCopyWith<_$DeletedChatEventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedChatEventResultCopyWith<$Res> {
  factory _$$UpdatedChatEventResultCopyWith(_$UpdatedChatEventResult value,
          $Res Function(_$UpdatedChatEventResult) then) =
      __$$UpdatedChatEventResultCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatVM chat});

  $ChatVMCopyWith<$Res> get chat;
}

/// @nodoc
class __$$UpdatedChatEventResultCopyWithImpl<$Res>
    extends _$ChatEventResultCopyWithImpl<$Res, _$UpdatedChatEventResult>
    implements _$$UpdatedChatEventResultCopyWith<$Res> {
  __$$UpdatedChatEventResultCopyWithImpl(_$UpdatedChatEventResult _value,
      $Res Function(_$UpdatedChatEventResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$UpdatedChatEventResult(
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

class _$UpdatedChatEventResult implements UpdatedChatEventResult {
  const _$UpdatedChatEventResult({required this.chat});

  @override
  final ChatVM chat;

  @override
  String toString() {
    return 'ChatEventResult.updated(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedChatEventResult &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedChatEventResultCopyWith<_$UpdatedChatEventResult> get copyWith =>
      __$$UpdatedChatEventResultCopyWithImpl<_$UpdatedChatEventResult>(
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
    required TResult Function(CreatedChatEventResult value) created,
    required TResult Function(DeletedChatEventResult value) deleted,
    required TResult Function(UpdatedChatEventResult value) updated,
    required TResult Function(OnlineChangedChatEventResult value) onlineChanged,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResult value)? created,
    TResult? Function(DeletedChatEventResult value)? deleted,
    TResult? Function(UpdatedChatEventResult value)? updated,
    TResult? Function(OnlineChangedChatEventResult value)? onlineChanged,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResult value)? created,
    TResult Function(DeletedChatEventResult value)? deleted,
    TResult Function(UpdatedChatEventResult value)? updated,
    TResult Function(OnlineChangedChatEventResult value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class UpdatedChatEventResult implements ChatEventResult {
  const factory UpdatedChatEventResult({required final ChatVM chat}) =
      _$UpdatedChatEventResult;

  ChatVM get chat;
  @JsonKey(ignore: true)
  _$$UpdatedChatEventResultCopyWith<_$UpdatedChatEventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineChangedChatEventResultCopyWith<$Res> {
  factory _$$OnlineChangedChatEventResultCopyWith(
          _$OnlineChangedChatEventResult value,
          $Res Function(_$OnlineChangedChatEventResult) then) =
      __$$OnlineChangedChatEventResultCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatID chatID, bool isOnline});

  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$OnlineChangedChatEventResultCopyWithImpl<$Res>
    extends _$ChatEventResultCopyWithImpl<$Res, _$OnlineChangedChatEventResult>
    implements _$$OnlineChangedChatEventResultCopyWith<$Res> {
  __$$OnlineChangedChatEventResultCopyWithImpl(
      _$OnlineChangedChatEventResult _value,
      $Res Function(_$OnlineChangedChatEventResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? isOnline = null,
  }) {
    return _then(_$OnlineChangedChatEventResult(
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

class _$OnlineChangedChatEventResult implements OnlineChangedChatEventResult {
  const _$OnlineChangedChatEventResult(
      {required this.chatID, required this.isOnline});

  @override
  final ChatID chatID;
  @override
  final bool isOnline;

  @override
  String toString() {
    return 'ChatEventResult.onlineChanged(chatID: $chatID, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineChangedChatEventResult &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatID, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineChangedChatEventResultCopyWith<_$OnlineChangedChatEventResult>
      get copyWith => __$$OnlineChangedChatEventResultCopyWithImpl<
          _$OnlineChangedChatEventResult>(this, _$identity);

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
    required TResult Function(CreatedChatEventResult value) created,
    required TResult Function(DeletedChatEventResult value) deleted,
    required TResult Function(UpdatedChatEventResult value) updated,
    required TResult Function(OnlineChangedChatEventResult value) onlineChanged,
  }) {
    return onlineChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatedChatEventResult value)? created,
    TResult? Function(DeletedChatEventResult value)? deleted,
    TResult? Function(UpdatedChatEventResult value)? updated,
    TResult? Function(OnlineChangedChatEventResult value)? onlineChanged,
  }) {
    return onlineChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatedChatEventResult value)? created,
    TResult Function(DeletedChatEventResult value)? deleted,
    TResult Function(UpdatedChatEventResult value)? updated,
    TResult Function(OnlineChangedChatEventResult value)? onlineChanged,
    required TResult orElse(),
  }) {
    if (onlineChanged != null) {
      return onlineChanged(this);
    }
    return orElse();
  }
}

abstract class OnlineChangedChatEventResult implements ChatEventResult {
  const factory OnlineChangedChatEventResult(
      {required final ChatID chatID,
      required final bool isOnline}) = _$OnlineChangedChatEventResult;

  ChatID get chatID;
  bool get isOnline;
  @JsonKey(ignore: true)
  _$$OnlineChangedChatEventResultCopyWith<_$OnlineChangedChatEventResult>
      get copyWith => throw _privateConstructorUsedError;
}
