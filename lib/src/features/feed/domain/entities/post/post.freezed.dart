// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  PostID get id => throw _privateConstructorUsedError;
  UserID get authorID => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<String> get mediaUrls => throw _privateConstructorUsedError;
  int get commentsAmount => throw _privateConstructorUsedError;
  List<UserID> get likedBy => throw _privateConstructorUsedError;
  List<CommentID> get comments => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {PostID id,
      UserID authorID,
      DateTime createdAt,
      String text,
      List<String> mediaUrls,
      int commentsAmount,
      List<UserID> likedBy,
      List<CommentID> comments,
      List<String> tags});

  $PostIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get authorID;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

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
    Object? mediaUrls = null,
    Object? commentsAmount = null,
    Object? likedBy = null,
    Object? comments = null,
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
      mediaUrls: null == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentsAmount: null == commentsAmount
          ? _value.commentsAmount
          : commentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      likedBy: null == likedBy
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentID>,
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
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostID id,
      UserID authorID,
      DateTime createdAt,
      String text,
      List<String> mediaUrls,
      int commentsAmount,
      List<UserID> likedBy,
      List<CommentID> comments,
      List<String> tags});

  @override
  $PostIDCopyWith<$Res> get id;
  @override
  $UserIDCopyWith<$Res> get authorID;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorID = null,
    Object? createdAt = null,
    Object? text = null,
    Object? mediaUrls = null,
    Object? commentsAmount = null,
    Object? likedBy = null,
    Object? comments = null,
    Object? tags = null,
  }) {
    return _then(_$_Post(
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
      mediaUrls: null == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentsAmount: null == commentsAmount
          ? _value.commentsAmount
          : commentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      likedBy: null == likedBy
          ? _value._likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentID>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  const _$_Post(
      {required this.id,
      required this.authorID,
      required this.createdAt,
      required this.text,
      required final List<String> mediaUrls,
      required this.commentsAmount,
      required final List<UserID> likedBy,
      required final List<CommentID> comments,
      required final List<String> tags})
      : _mediaUrls = mediaUrls,
        _likedBy = likedBy,
        _comments = comments,
        _tags = tags;

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final PostID id;
  @override
  final UserID authorID;
  @override
  final DateTime createdAt;
  @override
  final String text;
  final List<String> _mediaUrls;
  @override
  List<String> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaUrls);
  }

  @override
  final int commentsAmount;
  final List<UserID> _likedBy;
  @override
  List<UserID> get likedBy {
    if (_likedBy is EqualUnmodifiableListView) return _likedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedBy);
  }

  final List<CommentID> _comments;
  @override
  List<CommentID> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Post(id: $id, authorID: $authorID, createdAt: $createdAt, text: $text, mediaUrls: $mediaUrls, commentsAmount: $commentsAmount, likedBy: $likedBy, comments: $comments, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorID, authorID) ||
                other.authorID == authorID) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            (identical(other.commentsAmount, commentsAmount) ||
                other.commentsAmount == commentsAmount) &&
            const DeepCollectionEquality().equals(other._likedBy, _likedBy) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
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
      const DeepCollectionEquality().hash(_mediaUrls),
      commentsAmount,
      const DeepCollectionEquality().hash(_likedBy),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final PostID id,
      required final UserID authorID,
      required final DateTime createdAt,
      required final String text,
      required final List<String> mediaUrls,
      required final int commentsAmount,
      required final List<UserID> likedBy,
      required final List<CommentID> comments,
      required final List<String> tags}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  PostID get id;
  @override
  UserID get authorID;
  @override
  DateTime get createdAt;
  @override
  String get text;
  @override
  List<String> get mediaUrls;
  @override
  int get commentsAmount;
  @override
  List<UserID> get likedBy;
  @override
  List<CommentID> get comments;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
