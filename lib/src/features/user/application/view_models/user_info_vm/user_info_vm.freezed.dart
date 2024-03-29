// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoVM _$UserInfoVMFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'end':
      return EndUserInfoVM.fromJson(json);
    case 'staff':
      return StaffUserInfoVM.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'UserInfoVM', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$UserInfoVM {
  UserVM get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)
        end,
    required TResult Function(StaffUserVM user) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult? Function(StaffUserVM user)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult Function(StaffUserVM user)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfoVM value) end,
    required TResult Function(StaffUserInfoVM value) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfoVM value)? end,
    TResult? Function(StaffUserInfoVM value)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfoVM value)? end,
    TResult Function(StaffUserInfoVM value)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoVMCopyWith<$Res> {
  factory $UserInfoVMCopyWith(
          UserInfoVM value, $Res Function(UserInfoVM) then) =
      _$UserInfoVMCopyWithImpl<$Res, UserInfoVM>;
}

/// @nodoc
class _$UserInfoVMCopyWithImpl<$Res, $Val extends UserInfoVM>
    implements $UserInfoVMCopyWith<$Res> {
  _$UserInfoVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EndUserInfoVMCopyWith<$Res> {
  factory _$$EndUserInfoVMCopyWith(
          _$EndUserInfoVM value, $Res Function(_$EndUserInfoVM) then) =
      __$$EndUserInfoVMCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EndUserVM user,
      int friendsAmount,
      int subscribersAmount,
      int postsAmount,
      bool amIFriend,
      bool amISubscriber,
      bool areTheySubscribedToMe,
      bool didISentFriendBid,
      bool haveIFriendBidFromThisUser});
}

/// @nodoc
class __$$EndUserInfoVMCopyWithImpl<$Res>
    extends _$UserInfoVMCopyWithImpl<$Res, _$EndUserInfoVM>
    implements _$$EndUserInfoVMCopyWith<$Res> {
  __$$EndUserInfoVMCopyWithImpl(
      _$EndUserInfoVM _value, $Res Function(_$EndUserInfoVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? friendsAmount = null,
    Object? subscribersAmount = null,
    Object? postsAmount = null,
    Object? amIFriend = null,
    Object? amISubscriber = null,
    Object? areTheySubscribedToMe = null,
    Object? didISentFriendBid = null,
    Object? haveIFriendBidFromThisUser = null,
  }) {
    return _then(_$EndUserInfoVM(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EndUserVM,
      friendsAmount: null == friendsAmount
          ? _value.friendsAmount
          : friendsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribersAmount: null == subscribersAmount
          ? _value.subscribersAmount
          : subscribersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      postsAmount: null == postsAmount
          ? _value.postsAmount
          : postsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      amIFriend: null == amIFriend
          ? _value.amIFriend
          : amIFriend // ignore: cast_nullable_to_non_nullable
              as bool,
      amISubscriber: null == amISubscriber
          ? _value.amISubscriber
          : amISubscriber // ignore: cast_nullable_to_non_nullable
              as bool,
      areTheySubscribedToMe: null == areTheySubscribedToMe
          ? _value.areTheySubscribedToMe
          : areTheySubscribedToMe // ignore: cast_nullable_to_non_nullable
              as bool,
      didISentFriendBid: null == didISentFriendBid
          ? _value.didISentFriendBid
          : didISentFriendBid // ignore: cast_nullable_to_non_nullable
              as bool,
      haveIFriendBidFromThisUser: null == haveIFriendBidFromThisUser
          ? _value.haveIFriendBidFromThisUser
          : haveIFriendBidFromThisUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndUserInfoVM implements EndUserInfoVM {
  const _$EndUserInfoVM(
      {required this.user,
      required this.friendsAmount,
      required this.subscribersAmount,
      required this.postsAmount,
      required this.amIFriend,
      required this.amISubscriber,
      required this.areTheySubscribedToMe,
      required this.didISentFriendBid,
      required this.haveIFriendBidFromThisUser,
      final String? $type})
      : $type = $type ?? 'end';

  factory _$EndUserInfoVM.fromJson(Map<String, dynamic> json) =>
      _$$EndUserInfoVMFromJson(json);

  @override
  final EndUserVM user;
  @override
  final int friendsAmount;
  @override
  final int subscribersAmount;
  @override
  final int postsAmount;
  @override
  final bool amIFriend;
  @override
  final bool amISubscriber;
  @override
  final bool areTheySubscribedToMe;
  @override
  final bool didISentFriendBid;
  @override
  final bool haveIFriendBidFromThisUser;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UserInfoVM.end(user: $user, friendsAmount: $friendsAmount, subscribersAmount: $subscribersAmount, postsAmount: $postsAmount, amIFriend: $amIFriend, amISubscriber: $amISubscriber, areTheySubscribedToMe: $areTheySubscribedToMe, didISentFriendBid: $didISentFriendBid, haveIFriendBidFromThisUser: $haveIFriendBidFromThisUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUserInfoVM &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.friendsAmount, friendsAmount) ||
                other.friendsAmount == friendsAmount) &&
            (identical(other.subscribersAmount, subscribersAmount) ||
                other.subscribersAmount == subscribersAmount) &&
            (identical(other.postsAmount, postsAmount) ||
                other.postsAmount == postsAmount) &&
            (identical(other.amIFriend, amIFriend) ||
                other.amIFriend == amIFriend) &&
            (identical(other.amISubscriber, amISubscriber) ||
                other.amISubscriber == amISubscriber) &&
            (identical(other.areTheySubscribedToMe, areTheySubscribedToMe) ||
                other.areTheySubscribedToMe == areTheySubscribedToMe) &&
            (identical(other.didISentFriendBid, didISentFriendBid) ||
                other.didISentFriendBid == didISentFriendBid) &&
            (identical(other.haveIFriendBidFromThisUser,
                    haveIFriendBidFromThisUser) ||
                other.haveIFriendBidFromThisUser ==
                    haveIFriendBidFromThisUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      friendsAmount,
      subscribersAmount,
      postsAmount,
      amIFriend,
      amISubscriber,
      areTheySubscribedToMe,
      didISentFriendBid,
      haveIFriendBidFromThisUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserInfoVMCopyWith<_$EndUserInfoVM> get copyWith =>
      __$$EndUserInfoVMCopyWithImpl<_$EndUserInfoVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)
        end,
    required TResult Function(StaffUserVM user) staff,
  }) {
    return end(
        user,
        friendsAmount,
        subscribersAmount,
        postsAmount,
        amIFriend,
        amISubscriber,
        areTheySubscribedToMe,
        didISentFriendBid,
        haveIFriendBidFromThisUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult? Function(StaffUserVM user)? staff,
  }) {
    return end?.call(
        user,
        friendsAmount,
        subscribersAmount,
        postsAmount,
        amIFriend,
        amISubscriber,
        areTheySubscribedToMe,
        didISentFriendBid,
        haveIFriendBidFromThisUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult Function(StaffUserVM user)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(
          user,
          friendsAmount,
          subscribersAmount,
          postsAmount,
          amIFriend,
          amISubscriber,
          areTheySubscribedToMe,
          didISentFriendBid,
          haveIFriendBidFromThisUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfoVM value) end,
    required TResult Function(StaffUserInfoVM value) staff,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfoVM value)? end,
    TResult? Function(StaffUserInfoVM value)? staff,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfoVM value)? end,
    TResult Function(StaffUserInfoVM value)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EndUserInfoVMToJson(
      this,
    );
  }
}

abstract class EndUserInfoVM implements UserInfoVM {
  const factory EndUserInfoVM(
      {required final EndUserVM user,
      required final int friendsAmount,
      required final int subscribersAmount,
      required final int postsAmount,
      required final bool amIFriend,
      required final bool amISubscriber,
      required final bool areTheySubscribedToMe,
      required final bool didISentFriendBid,
      required final bool haveIFriendBidFromThisUser}) = _$EndUserInfoVM;

  factory EndUserInfoVM.fromJson(Map<String, dynamic> json) =
      _$EndUserInfoVM.fromJson;

  @override
  EndUserVM get user;
  int get friendsAmount;
  int get subscribersAmount;
  int get postsAmount;
  bool get amIFriend;
  bool get amISubscriber;
  bool get areTheySubscribedToMe;
  bool get didISentFriendBid;
  bool get haveIFriendBidFromThisUser;
  @JsonKey(ignore: true)
  _$$EndUserInfoVMCopyWith<_$EndUserInfoVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffUserInfoVMCopyWith<$Res> {
  factory _$$StaffUserInfoVMCopyWith(
          _$StaffUserInfoVM value, $Res Function(_$StaffUserInfoVM) then) =
      __$$StaffUserInfoVMCopyWithImpl<$Res>;
  @useResult
  $Res call({StaffUserVM user});
}

/// @nodoc
class __$$StaffUserInfoVMCopyWithImpl<$Res>
    extends _$UserInfoVMCopyWithImpl<$Res, _$StaffUserInfoVM>
    implements _$$StaffUserInfoVMCopyWith<$Res> {
  __$$StaffUserInfoVMCopyWithImpl(
      _$StaffUserInfoVM _value, $Res Function(_$StaffUserInfoVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$StaffUserInfoVM(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StaffUserVM,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffUserInfoVM implements StaffUserInfoVM {
  const _$StaffUserInfoVM({required this.user, final String? $type})
      : $type = $type ?? 'staff';

  factory _$StaffUserInfoVM.fromJson(Map<String, dynamic> json) =>
      _$$StaffUserInfoVMFromJson(json);

  @override
  final StaffUserVM user;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UserInfoVM.staff(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUserInfoVM &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserInfoVMCopyWith<_$StaffUserInfoVM> get copyWith =>
      __$$StaffUserInfoVMCopyWithImpl<_$StaffUserInfoVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)
        end,
    required TResult Function(StaffUserVM user) staff,
  }) {
    return staff(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult? Function(StaffUserVM user)? staff,
  }) {
    return staff?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EndUserVM user,
            int friendsAmount,
            int subscribersAmount,
            int postsAmount,
            bool amIFriend,
            bool amISubscriber,
            bool areTheySubscribedToMe,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult Function(StaffUserVM user)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfoVM value) end,
    required TResult Function(StaffUserInfoVM value) staff,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfoVM value)? end,
    TResult? Function(StaffUserInfoVM value)? staff,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfoVM value)? end,
    TResult Function(StaffUserInfoVM value)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffUserInfoVMToJson(
      this,
    );
  }
}

abstract class StaffUserInfoVM implements UserInfoVM {
  const factory StaffUserInfoVM({required final StaffUserVM user}) =
      _$StaffUserInfoVM;

  factory StaffUserInfoVM.fromJson(Map<String, dynamic> json) =
      _$StaffUserInfoVM.fromJson;

  @override
  StaffUserVM get user;
  @JsonKey(ignore: true)
  _$$StaffUserInfoVMCopyWith<_$StaffUserInfoVM> get copyWith =>
      throw _privateConstructorUsedError;
}
