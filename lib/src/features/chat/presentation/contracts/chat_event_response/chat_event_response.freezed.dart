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
  return _ChatEventResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatEventResponse {
  List<ChatVM> get created => throw _privateConstructorUsedError;
  List<ChatID> get deleted => throw _privateConstructorUsedError;
  List<ChatVM> get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatEventResponseCopyWith<ChatEventResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventResponseCopyWith<$Res> {
  factory $ChatEventResponseCopyWith(
          ChatEventResponse value, $Res Function(ChatEventResponse) then) =
      _$ChatEventResponseCopyWithImpl<$Res, ChatEventResponse>;
  @useResult
  $Res call({List<ChatVM> created, List<ChatID> deleted, List<ChatVM> updated});
}

/// @nodoc
class _$ChatEventResponseCopyWithImpl<$Res, $Val extends ChatEventResponse>
    implements $ChatEventResponseCopyWith<$Res> {
  _$ChatEventResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? deleted = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as List<ChatVM>,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as List<ChatID>,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as List<ChatVM>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatEventResponseCopyWith<$Res>
    implements $ChatEventResponseCopyWith<$Res> {
  factory _$$_ChatEventResponseCopyWith(_$_ChatEventResponse value,
          $Res Function(_$_ChatEventResponse) then) =
      __$$_ChatEventResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatVM> created, List<ChatID> deleted, List<ChatVM> updated});
}

/// @nodoc
class __$$_ChatEventResponseCopyWithImpl<$Res>
    extends _$ChatEventResponseCopyWithImpl<$Res, _$_ChatEventResponse>
    implements _$$_ChatEventResponseCopyWith<$Res> {
  __$$_ChatEventResponseCopyWithImpl(
      _$_ChatEventResponse _value, $Res Function(_$_ChatEventResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? deleted = null,
    Object? updated = null,
  }) {
    return _then(_$_ChatEventResponse(
      created: null == created
          ? _value._created
          : created // ignore: cast_nullable_to_non_nullable
              as List<ChatVM>,
      deleted: null == deleted
          ? _value._deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as List<ChatID>,
      updated: null == updated
          ? _value._updated
          : updated // ignore: cast_nullable_to_non_nullable
              as List<ChatVM>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatEventResponse implements _ChatEventResponse {
  const _$_ChatEventResponse(
      {final List<ChatVM> created = const [],
      final List<ChatID> deleted = const [],
      final List<ChatVM> updated = const []})
      : _created = created,
        _deleted = deleted,
        _updated = updated;

  factory _$_ChatEventResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChatEventResponseFromJson(json);

  final List<ChatVM> _created;
  @override
  @JsonKey()
  List<ChatVM> get created {
    if (_created is EqualUnmodifiableListView) return _created;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_created);
  }

  final List<ChatID> _deleted;
  @override
  @JsonKey()
  List<ChatID> get deleted {
    if (_deleted is EqualUnmodifiableListView) return _deleted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deleted);
  }

  final List<ChatVM> _updated;
  @override
  @JsonKey()
  List<ChatVM> get updated {
    if (_updated is EqualUnmodifiableListView) return _updated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updated);
  }

  @override
  String toString() {
    return 'ChatEventResponse(created: $created, deleted: $deleted, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatEventResponse &&
            const DeepCollectionEquality().equals(other._created, _created) &&
            const DeepCollectionEquality().equals(other._deleted, _deleted) &&
            const DeepCollectionEquality().equals(other._updated, _updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_created),
      const DeepCollectionEquality().hash(_deleted),
      const DeepCollectionEquality().hash(_updated));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatEventResponseCopyWith<_$_ChatEventResponse> get copyWith =>
      __$$_ChatEventResponseCopyWithImpl<_$_ChatEventResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatEventResponseToJson(
      this,
    );
  }
}

abstract class _ChatEventResponse implements ChatEventResponse {
  const factory _ChatEventResponse(
      {final List<ChatVM> created,
      final List<ChatID> deleted,
      final List<ChatVM> updated}) = _$_ChatEventResponse;

  factory _ChatEventResponse.fromJson(Map<String, dynamic> json) =
      _$_ChatEventResponse.fromJson;

  @override
  List<ChatVM> get created;
  @override
  List<ChatID> get deleted;
  @override
  List<ChatVM> get updated;
  @override
  @JsonKey(ignore: true)
  _$$_ChatEventResponseCopyWith<_$_ChatEventResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
