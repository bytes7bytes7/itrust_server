import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class UserMapsterRegistrar {
  const UserMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(GetUserByIDRequestToGetUserByIDQueryMapper.new),
      )
      ..register(
        MapperMeta.one(UserResultToUserResponse.new),
      )
      ..register(
        MapperMeta.two(GetUserByNickRequestToGetUserByNickQueryMapper.new),
      )
      ..register(
        MapperMeta.two(GetFriendsRequestToGetFriendsQueryMapper.new),
      )
      ..register(
        MapperMeta.one(UsersResultToUsersResponseMapper.new),
      )
      ..register(
        MapperMeta.two(SendFriendBidRequestToSendFriendBidCommandMapper.new),
      )
      ..register(
        MapperMeta.one(UserInfoResultToUserInfoResponseMapper.new),
      )
      ..register(
        MapperMeta.three(UserToUserInfoVMMapper.new),
      )
      ..register(
        MapperMeta.two(GetUserInfoRequestToGetUserInfoQueryMapper.new),
      );
  }
}
