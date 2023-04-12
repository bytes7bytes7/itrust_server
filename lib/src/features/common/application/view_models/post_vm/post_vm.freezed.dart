// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostVM _$PostVMFromJson(Map<String, dynamic> json) {
  return _PostVM.fromJson(json);
}

/// @nodoc
mixin _$PostVM {
  PostID get id => throw _privateConstructorUsedError;
  UserID get authorID => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<MediaVM> get media => throw _privateConstructorUsedError;
  bool get likedByMe => throw _privateConstructorUsedError;
  int get likesAmount => throw _privateConstructorUsedError;
  int get commentsAmount => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostVMCopyWith<PostVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostVMCopyWith<$Res> {
  factory $PostVMCopyWith(PostVM value, $Res Function(PostVM) then) =
      _$PostVMCopyWithImpl<$Res, PostVM>;
  @useResult
  $Res call(
      {PostID id,
      UserID authorID,
      DateTime createdAt,
      String text,
      List<MediaVM> media,
      bool likedByMe,
      int likesAmount,
      int commentsAmount,
      List<String> tags});

  $PostIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get authorID;
}

/// @nodoc
class _$PostVMCopyWithImpl<$Res, $Val extends PostVM>
    implements $PostVMCopyWith<$Res> {
  _$PostVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorID = null,
    Object? createdAt = null,
    Object? text = null,
    Object? media = null,
    Object? likedByMe = null,
    Object? likesAmount = null,
    Object? commentsAmount = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PostID,
      authorID: null == authorID
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as UserID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaVM>,
      likedByMe: null == likedByMe
          ? _value.likedByMe
          : likedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      likesAmount: null == likesAmount
          ? _value.likesAmount
          : likesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsAmount: null == commentsAmount
          ? _value.commentsAmount
          : commentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostIDCopyWith<$Res> get id {
    return $PostIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get authorID {
    return $UserIDCopyWith<$Res>(_value.authorID, (value) {
      return _then(_value.copyWith(authorID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostVMCopyWith<$Res> implements $PostVMCopyWith<$Res> {
  factory _$$_PostVMCopyWith(_$_PostVM value, $Res Function(_$_PostVM) then) =
      __$$_PostVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostID id,
      UserID authorID,
      DateTime createdAt,
      String text,
      List<MediaVM> media,
      bool likedByMe,
      int likesAmount,
      int commentsAmount,
      List<String> tags});

  @override
  $PostIDCopyWith<$Res> get id;
  @override
  $UserIDCopyWith<$Res> get authorID;
}

/// @nodoc
class __$$_PostVMCopyWithImpl<$Res>
    extends _$PostVMCopyWithImpl<$Res, _$_PostVM>
    implements _$$_PostVMCopyWith<$Res> {
  __$$_PostVMCopyWithImpl(_$_PostVM _value, $Res Function(_$_PostVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorID = null,
    Object? createdAt = null,
    Object? text = null,
    Object? media = null,
    Object? likedByMe = null,
    Object? likesAmount = null,
    Object? commentsAmount = null,
    Object? tags = null,
  }) {
    return _then(_$_PostVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PostID,
      authorID: null == authorID
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as UserID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaVM>,
      likedByMe: null == likedByMe
          ? _value.likedByMe
          : likedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      likesAmount: null == likesAmount
          ? _value.likesAmount
          : likesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsAmount: null == commentsAmount
          ? _value.commentsAmount
          : commentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostVM implements _PostVM {
  const _$_PostVM(
      {required this.id,
      required this.authorID,
      required this.createdAt,
      required this.text,
      required final List<MediaVM> media,
      required this.likedByMe,
      required this.likesAmount,
      required this.commentsAmount,
      required final List<String> tags})
      : _media = media,
        _tags = tags;

  factory _$_PostVM.fromJson(Map<String, dynamic> json) =>
      _$$_PostVMFromJson(json);

  @override
  final PostID id;
  @override
  final UserID authorID;
  @override
  final DateTime createdAt;
  @override
  final String text;
  final List<MediaVM> _media;
  @override
  List<MediaVM> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  final bool likedByMe;
  @override
  final int likesAmount;
  @override
  final int commentsAmount;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'PostVM(id: $id, authorID: $authorID, createdAt: $createdAt, text: $text, media: $media, likedByMe: $likedByMe, likesAmount: $likesAmount, commentsAmount: $commentsAmount, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorID, authorID) ||
                other.authorID == authorID) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.likedByMe, likedByMe) ||
                other.likedByMe == likedByMe) &&
            (identical(other.likesAmount, likesAmount) ||
                other.likesAmount == likesAmount) &&
            (identical(other.commentsAmount, commentsAmount) ||
                other.commentsAmount == commentsAmount) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      authorID,
      createdAt,
      text,
      const DeepCollectionEquality().hash(_media),
      likedByMe,
      likesAmount,
      commentsAmount,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostVMCopyWith<_$_PostVM> get copyWith =>
      __$$_PostVMCopyWithImpl<_$_PostVM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostVMToJson(
      this,
    );
  }
}

abstract class _PostVM implements PostVM {
  const factory _PostVM(
      {required final PostID id,
      required final UserID authorID,
      required final DateTime createdAt,
      required final String text,
      required final List<MediaVM> media,
      required final bool likedByMe,
      required final int likesAmount,
      required final int commentsAmount,
      required final List<String> tags}) = _$_PostVM;

  factory _PostVM.fromJson(Map<String, dynamic> json) = _$_PostVM.fromJson;

  @override
  PostID get id;
  @override
  UserID get authorID;
  @override
  DateTime get createdAt;
  @override
  String get text;
  @override
  List<MediaVM> get media;
  @override
  bool get likedByMe;
  @override
  int get likesAmount;
  @override
  int get commentsAmount;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_PostVMCopyWith<_$_PostVM> get copyWith =>
      throw _privateConstructorUsedError;
}
