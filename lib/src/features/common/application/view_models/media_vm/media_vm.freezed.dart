// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaVM _$MediaVMFromJson(Map<String, dynamic> json) {
  return _MediaVM.fromJson(json);
}

/// @nodoc
mixin _$MediaVM {
  MediaID get id => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaVMCopyWith<MediaVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaVMCopyWith<$Res> {
  factory $MediaVMCopyWith(MediaVM value, $Res Function(MediaVM) then) =
      _$MediaVMCopyWithImpl<$Res, MediaVM>;
  @useResult
  $Res call({MediaID id, MediaType type});

  $MediaIDCopyWith<$Res> get id;
}

/// @nodoc
class _$MediaVMCopyWithImpl<$Res, $Val extends MediaVM>
    implements $MediaVMCopyWith<$Res> {
  _$MediaVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MediaID,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaIDCopyWith<$Res> get id {
    return $MediaIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaVMCopyWith<$Res> implements $MediaVMCopyWith<$Res> {
  factory _$$_MediaVMCopyWith(
          _$_MediaVM value, $Res Function(_$_MediaVM) then) =
      __$$_MediaVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MediaID id, MediaType type});

  @override
  $MediaIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$_MediaVMCopyWithImpl<$Res>
    extends _$MediaVMCopyWithImpl<$Res, _$_MediaVM>
    implements _$$_MediaVMCopyWith<$Res> {
  __$$_MediaVMCopyWithImpl(_$_MediaVM _value, $Res Function(_$_MediaVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$_MediaVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MediaID,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaVM implements _MediaVM {
  const _$_MediaVM({required this.id, required this.type});

  factory _$_MediaVM.fromJson(Map<String, dynamic> json) =>
      _$$_MediaVMFromJson(json);

  @override
  final MediaID id;
  @override
  final MediaType type;

  @override
  String toString() {
    return 'MediaVM(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaVMCopyWith<_$_MediaVM> get copyWith =>
      __$$_MediaVMCopyWithImpl<_$_MediaVM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaVMToJson(
      this,
    );
  }
}

abstract class _MediaVM implements MediaVM {
  const factory _MediaVM(
      {required final MediaID id, required final MediaType type}) = _$_MediaVM;

  factory _MediaVM.fromJson(Map<String, dynamic> json) = _$_MediaVM.fromJson;

  @override
  MediaID get id;
  @override
  MediaType get type;
  @override
  @JsonKey(ignore: true)
  _$$_MediaVMCopyWith<_$_MediaVM> get copyWith =>
      throw _privateConstructorUsedError;
}
