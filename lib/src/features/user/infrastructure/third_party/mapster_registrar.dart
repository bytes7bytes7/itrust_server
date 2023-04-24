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
        MapperMeta.two(GetForUserRequestToGetFriendsQueryMapper.new),
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
        MapperMeta.two(
          (input) => UserToUserInfoVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.two(
          (input) => EndUserToUserInfoVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.two(
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
      )
      ..register(
        MapperMeta.two(
          UserActionRequestToUnsubscribeCommandMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          GetUsersRequestToGetAllUsersQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          GetForUserRequestToGetSubscribersQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          GetUsersRequestToGetSubscriptionsQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          GetUsersRequestToGetInboxFriendBidsQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          GetUsersRequestToGetOutboxFriendBidsQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          GetPeopleAmountRequestToGetPeopleAmountQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(
          PeopleAmountResultToPeopleAmountResponseMapper.new,
        ),
      )
      ..register(
        MapperMeta.two(
          GetFriendBidsAmountRequestToGetFriendBidsAmountQueryMapper.new,
        ),
      )
      ..register(
        MapperMeta.one(
          FriendBidsAmountResultToFriendBidsAmountResponseMapper.new,
        ),
      );
  }
}
