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
  List<ChatVM> get created => throw _privateConstructorUsedError;
  List<ChatID> get deleted => throw _privateConstructorUsedError;
  List<ChatVM> get updated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventResultCopyWith<ChatEventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventResultCopyWith<$Res> {
  factory $ChatEventResultCopyWith(
          ChatEventResult value, $Res Function(ChatEventResult) then) =
      _$ChatEventResultCopyWithImpl<$Res, ChatEventResult>;
  @useResult
  $Res call({List<ChatVM> created, List<ChatID> deleted, List<ChatVM> updated});
}

/// @nodoc
class _$ChatEventResultCopyWithImpl<$Res, $Val extends ChatEventResult>
    implements $ChatEventResultCopyWith<$Res> {
  _$ChatEventResultCopyWithImpl(this._value, this._then);

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
abstract class _$$_ChatEventResultCopyWith<$Res>
    implements $ChatEventResultCopyWith<$Res> {
  factory _$$_ChatEventResultCopyWith(
          _$_ChatEventResult value, $Res Function(_$_ChatEventResult) then) =
      __$$_ChatEventResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatVM> created, List<ChatID> deleted, List<ChatVM> updated});
}

/// @nodoc
class __$$_ChatEventResultCopyWithImpl<$Res>
    extends _$ChatEventResultCopyWithImpl<$Res, _$_ChatEventResult>
    implements _$$_ChatEventResultCopyWith<$Res> {
  __$$_ChatEventResultCopyWithImpl(
      _$_ChatEventResult _value, $Res Function(_$_ChatEventResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? deleted = null,
    Object? updated = null,
  }) {
    return _then(_$_ChatEventResult(
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

class _$_ChatEventResult implements _ChatEventResult {
  const _$_ChatEventResult(
      {final List<ChatVM> created = const [],
      final List<ChatID> deleted = const [],
      final List<ChatVM> updated = const []})
      : _created = created,
        _deleted = deleted,
        _updated = updated;

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
    return 'ChatEventResult(created: $created, deleted: $deleted, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatEventResult &&
            const DeepCollectionEquality().equals(other._created, _created) &&
            const DeepCollectionEquality().equals(other._deleted, _deleted) &&
            const DeepCollectionEquality().equals(other._updated, _updated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_created),
      const DeepCollectionEquality().hash(_deleted),
      const DeepCollectionEquality().hash(_updated));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatEventResultCopyWith<_$_ChatEventResult> get copyWith =>
      __$$_ChatEventResultCopyWithImpl<_$_ChatEventResult>(this, _$identity);
}

abstract class _ChatEventResult implements ChatEventResult {
  const factory _ChatEventResult(
      {final List<ChatVM> created,
      final List<ChatID> deleted,
      final List<ChatVM> updated}) = _$_ChatEventResult;

  @override
  List<ChatVM> get created;
  @override
  List<ChatID> get deleted;
  @override
  List<ChatVM> get updated;
  @override
  @JsonKey(ignore: true)
  _$$_ChatEventResultCopyWith<_$_ChatEventResult> get copyWith =>
      throw _privateConstructorUsedError;
}
