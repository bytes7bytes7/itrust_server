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
        MapperMeta.one(EndUsersResultToEndUsersResponseMapper.new),
      )
      ..register(
        MapperMeta.two(UserActionRequestToSendFriendBidCommandMapper.new),
      )
      ..register(
        MapperMeta.one(UserInfoResultToUserInfoResponseMapper.new),
      )
      ..register(
        MapperMeta.five(
          (input) => UserToUserInfoVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.five(
          (input) => EndUserToUserInfoVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => StaffUserToUserInfoVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.two(UserActionRequestToGetUserInfoQueryMapper.new),
      )
      ..register(
        MapperMeta.two(
          UserActionRequestToCancelFriendBidCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          RespondFriendBidRequestToRespondFriendBidCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          UserActionRequestToRemoveFriendCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          UserActionRequestToRemoveSubscriberCommandMapper.new,
        ),
      );
  }
}
