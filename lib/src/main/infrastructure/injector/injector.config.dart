// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i32;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i127;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i159;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i92;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i135;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i56;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i55;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i54;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i121;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i122;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i53;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i120;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i73;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i153;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i78;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i156;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i90;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i157;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i91;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i142;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i152;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i77;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i117;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i119;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i118;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i74;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i59;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i61;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i124;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i125;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i37;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i123;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i99;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i7;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i11;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i30;
import 'package:itrust_server/src/features/common/common.dart' as _i158;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i31;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i8;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i129;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i136;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i145;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i58;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i132;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i133;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i45;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i131;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_handler.dart'
    as _i138;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/media/infrastructure/json_converters/get_media_request_json_converter.dart'
    as _i52;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mapster_registrar.dart'
    as _i80;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mediator_registrar.dart'
    as _i155;
import 'package:itrust_server/src/features/media/presentation/contracts/contracts.dart'
    as _i51;
import 'package:itrust_server/src/features/media/presentation/controllers/media_controller.dart'
    as _i154;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i128;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i130;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i6;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i150;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i75;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i151;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i76;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i108;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i109;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i110;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i111;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i141;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i21;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i139;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i140;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i20;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_handler.dart'
    as _i149;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i63;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i64;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i66;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i65;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i67;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_user_posts_request_json_converter.dart'
    as _i68;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i69;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i70;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i71;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i36;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i86;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i87;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i62;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i35;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i85;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_handler.dart'
    as _i126;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_handler.dart'
    as _i93;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_validator.dart'
    as _i94;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_handler.dart'
    as _i95;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_validator.dart'
    as _i96;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_handler.dart'
    as _i97;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_validator.dart'
    as _i98;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i102;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i103;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_handler.dart'
    as _i112;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_validator.dart'
    as _i113;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_handler.dart'
    as _i134;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i137;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_handler.dart'
    as _i143;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_handler.dart'
    as _i144;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i146;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i147;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i148;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_for_user_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i50;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_users_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/respond_friend_bid_request_json_converter.dart'
    as _i48;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/user_action_request_json_converter.dart'
    as _i34;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i115;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i116;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i33;
import 'package:itrust_server/src/features/user/presentation/contracts/get_for_user_request/get_for_user_request.dart'
    as _i42;
import 'package:itrust_server/src/features/user/presentation/contracts/get_users_request/get_users_request.dart'
    as _i40;
import 'package:itrust_server/src/features/user/presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart'
    as _i47;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i114;
import 'package:itrust_server/src/repositories/implementations/end_user_activity_repository.dart'
    as _i10;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i13;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i82;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i84;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i89;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i101;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i104;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i106;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i107;
import 'package:itrust_server/src/repositories/interfaces/end_user_activity_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i12;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i81;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i88;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i100;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i105;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i72;
import 'package:json_annotation/json_annotation.dart' as _i60;
import 'package:mapster/mapster.dart' as _i79;
import 'package:mediator/mediator.dart' as _i83;

import '../../../env/env_module.dart' as _i160;
import '../third_party/mapster_module.dart' as _i161;
import '../third_party/mediator_module.dart' as _i162;

const String _dev = 'dev';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final envModule = _$EnvModule();
  final mapsterModule = _$MapsterModule();
  final mediatorModule = _$MediatorModule();
  gh.singleton<_i3.CancelFriendBidCommandValidator>(
      _i3.CancelFriendBidCommandValidator());
  gh.singleton<_i4.ChangePersonalInfoCommandValidator>(
      _i4.ChangePersonalInfoCommandValidator());
  gh.singleton<_i5.CommentPostCommandValidator>(
      _i5.CommentPostCommandValidator());
  gh.singleton<_i6.CreatePostCommandValidator>(
      _i6.CreatePostCommandValidator());
  gh.singleton<_i7.DateTimeProvider>(_i8.ProdDateTimeProvider());
  gh.singleton<_i9.EndUserActivityRepository>(
    _i10.DevEndUserActivityRepository(
        dateTimeProvider: gh<_i11.DateTimeProvider>()),
    registerFor: {_dev},
  );
  gh.singleton<_i12.EndUserRepository>(
    _i13.DevEndUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i14.GetAllUsersQueryValidator>(
      _i14.GetAllUsersQueryValidator());
  gh.singleton<_i15.GetDevicesQueryValidator>(_i15.GetDevicesQueryValidator());
  gh.singleton<_i16.GetFeedQueryValidator>(_i16.GetFeedQueryValidator());
  gh.singleton<_i17.GetFriendsQueryValidator>(_i17.GetFriendsQueryValidator());
  gh.singleton<_i18.GetMediaQueryValidator>(_i18.GetMediaQueryValidator());
  gh.singleton<_i19.GetPostCommentQueryValidator>(
      _i19.GetPostCommentQueryValidator());
  gh.singleton<_i20.GetPostCommentsQueryValidator>(
      _i20.GetPostCommentsQueryValidator());
  gh.singleton<_i21.GetPostQueryValidator>(_i21.GetPostQueryValidator());
  gh.singleton<_i22.GetRulesQueryValidator>(_i22.GetRulesQueryValidator());
  gh.singleton<_i23.GetSubscribersQueryValidator>(
      _i23.GetSubscribersQueryValidator());
  gh.singleton<_i24.GetSubscriptionsQueryValidator>(
      _i24.GetSubscriptionsQueryValidator());
  gh.singleton<_i25.GetTagsQueryValidator>(_i25.GetTagsQueryValidator());
  gh.singleton<_i26.GetUserByIDQueryValidator>(
      _i26.GetUserByIDQueryValidator());
  gh.singleton<_i27.GetUserByNickQueryValidator>(
      _i27.GetUserByNickQueryValidator());
  gh.singleton<_i28.GetUserInfoQueryValidator>(
      _i28.GetUserInfoQueryValidator());
  gh.singleton<_i29.GetUserPostsQueryValidator>(
      _i29.GetUserPostsQueryValidator());
  gh.singleton<_i30.HashService>(_i31.ProdHashService());
  gh.singleton<
          _i32.JsonConverter<_i33.UserActionRequest, Map<String, Object?>>>(
      _i34.UserActionRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i35.UnlikePostRequest, Map<String, Object?>>>(
      _i36.UnlikePostRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i37.GetRulesRequest, Map<String, Object?>>>(
      _i38.GetRulesRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i37.VerifyTokenRequest, Map<String, Object?>>>(
      _i39.VerifyTokenRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i40.GetUsersRequest, Map<String, Object?>>>(
      _i41.GetUsersRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i42.GetForUserRequest, Map<String, Object?>>>(
      _i43.GetForUserRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i37.LogInRequest, Map<String, Object?>>>(
      _i44.LogInRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i45.GetTagsRequest, Map<String, Object?>>>(
      _i46.GetTagsRequestJsonConverter());
  gh.singleton<
      _i32.JsonConverter<_i47.RespondFriendBidRequest,
          Map<String, Object?>>>(_i48.RespondFriendBidRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i33.GetUserByNickRequest, Map<String, Object?>>>(
      _i49.GetUserByNickRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i33.GetUserByIDRequest, Map<String, Object?>>>(
      _i50.GetUserByIDRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i51.GetMediaRequest, Map<String, Object?>>>(
      _i52.GetMediaRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i53.RemoveDeviceRequest, Map<String, Object?>>>(
      _i54.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i53.GetDevicesRequest, Map<String, Object?>>>(
      _i55.GetDevicesRequestJsonConverter());
  gh.singleton<
      _i32.JsonConverter<_i53.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i56.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i37.LogOutRequest, Map<String, Object?>>>(
      _i57.LogOutRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i45.GetFeedRequest, Map<String, Object?>>>(
      _i58.GetFeedRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i37.RefreshTokenRequest, Map<String, Object?>>>(
      _i59.RefreshTokenRequestJsonConverter());
  gh.singleton<_i60.JsonConverter<_i37.RegisterRequest, Map<String, Object?>>>(
      _i61.RegisterRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i62.CommentPostRequest, Map<String, Object?>>>(
      _i63.CommentPostRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i35.CreatePostRequest, Map<String, Object?>>>(
      _i64.CreatePostRequestJsonConverter());
  gh.singleton<
      _i32.JsonConverter<_i35.GetPostCommentsRequest,
          Map<String, Object?>>>(_i65.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i35.GetPostCommentRequest, Map<String, Object?>>>(
      _i66.GetPostCommentRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i35.GetPostRequest, Map<String, Object?>>>(
      _i67.GetPostRequestJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i35.GetUserPostsRequest, Map<String, Object?>>>(
      _i68.GetUserPostsRequestJsonConverter());
  gh.singleton<
      _i32.JsonConverter<_i35.LikePostCommentRequest,
          Map<String, Object?>>>(_i69.LikePostCommentRequestJsonConverter());
  gh.singleton<_i32.JsonConverter<_i35.LikePostRequest, Map<String, Object?>>>(
      _i70.LikePostRequestJsonConverter());
  gh.singleton<
      _i32.JsonConverter<_i35.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i71.UnlikePostCommentRequestJsonConverter());
  gh.singleton<_i72.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i73.JwtTokenService>(
      _i74.ProdJwtTokenService(gh<_i72.JwtSettings>()));
  gh.singleton<_i75.LikePostCommandValidator>(_i75.LikePostCommandValidator());
  gh.singleton<_i76.LikePostCommentCommandValidator>(
      _i76.LikePostCommentCommandValidator());
  gh.singleton<_i77.LogInQueryValidator>(_i77.LogInQueryValidator());
  gh.singleton<_i78.LogOutCommandValidator>(_i78.LogOutCommandValidator());
  gh.singleton<_i79.Mapster>(mapsterModule.mapster);
  gh.singleton<_i80.MediaMapsterRegistrar>(
      _i80.MediaMapsterRegistrar(gh<_i79.Mapster>())..register());
  gh.singleton<_i81.MediaRepository>(
    _i82.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i83.Mediator>(mediatorModule.mediator);
  gh.singleton<_i12.PasswordHashRepository>(
    _i84.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i85.PostController>(() => _i85.PostController(
        mediator: gh<_i83.Mediator>(),
        mapster: gh<_i79.Mapster>(),
      ));
  gh.singleton<_i86.PostMapsterRegistrar>(
      _i86.PostMapsterRegistrar(gh<_i79.Mapster>())..register());
  gh.singleton<_i87.PostMediatorRegistrar>(
      _i87.PostMediatorRegistrar(gh<_i83.Mediator>())..register());
  gh.singleton<_i88.PostRepository>(
    _i89.DevPostRepository(
      dateTimeProvider: gh<_i11.DateTimeProvider>(),
      mediaRepository: gh<_i81.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i90.RefreshTokenCommandValidator>(
      _i90.RefreshTokenCommandValidator());
  gh.singleton<_i91.RegisterCommandValidator>(_i91.RegisterCommandValidator());
  gh.singleton<_i92.RemoveDeviceCommandValidator>(
      _i92.RemoveDeviceCommandValidator());
  gh.singleton<_i93.RemoveFriendCommandHandler>(_i93.RemoveFriendCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i94.RemoveFriendCommandValidator>(
      _i94.RemoveFriendCommandValidator());
  gh.singleton<_i95.RemoveSubscriberCommandHandler>(
      _i95.RemoveSubscriberCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i96.RemoveSubscriberCommandValidator>(
      _i96.RemoveSubscriberCommandValidator());
  gh.singleton<_i97.RespondFriendBidCommandHandler>(
      _i97.RespondFriendBidCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i98.RespondFriendBidCommandValidator>(
      _i98.RespondFriendBidCommandValidator());
  gh.factory<_i99.RulesController>(() => _i99.RulesController(
        mediator: gh<_i83.Mediator>(),
        mapster: gh<_i79.Mapster>(),
      ));
  gh.singleton<_i100.RulesRepository>(
    _i101.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i102.SendFriendBidCommandHandler>(
      _i102.SendFriendBidCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i103.SendFriendBidCommandValidator>(
      _i103.SendFriendBidCommandValidator());
  gh.singleton<_i12.StaffUserRepository>(
    _i104.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i105.TagRepository>(
    _i106.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i12.TokenRepository>(
    _i107.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i108.UnlikePostCommandHandler>(_i108.UnlikePostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i109.UnlikePostCommandValidator>(
      _i109.UnlikePostCommandValidator());
  gh.singleton<_i110.UnlikePostCommentCommandHandler>(
      _i110.UnlikePostCommentCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i111.UnlikePostCommentCommandValidator>(
      _i111.UnlikePostCommentCommandValidator());
  gh.singleton<_i112.UnsubscribeCommandHandler>(_i112.UnsubscribeCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i113.UnsubscribeCommandValidator>(
      _i113.UnsubscribeCommandValidator());
  gh.factory<_i114.UserController>(() => _i114.UserController(
        mediator: gh<_i83.Mediator>(),
        mapster: gh<_i79.Mapster>(),
      ));
  gh.singleton<_i115.UserMapsterRegistrar>(
      _i115.UserMapsterRegistrar(gh<_i79.Mapster>())..register());
  gh.singleton<_i116.UserMediatorRegistrar>(
      _i116.UserMediatorRegistrar(gh<_i83.Mediator>())..register());
  gh.singleton<_i117.VerifyTokenQueryHandler>(_i117.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i118.JwtTokenService>(),
    tokenRepository: gh<_i12.TokenRepository>(),
  ));
  gh.singleton<_i119.VerifyTokenQueryValidator>(
      _i119.VerifyTokenQueryValidator());
  gh.factory<_i120.AccountController>(() => _i120.AccountController(
        mediator: gh<_i83.Mediator>(),
        mapster: gh<_i79.Mapster>(),
      ));
  gh.singleton<_i121.AccountMapsterRegistrar>(
      _i121.AccountMapsterRegistrar(gh<_i79.Mapster>())..register());
  gh.singleton<_i122.AccountMediatorRegistrar>(
      _i122.AccountMediatorRegistrar(gh<_i83.Mediator>())..register());
  gh.factory<_i123.AuthController>(() => _i123.AuthController(
        mediator: gh<_i83.Mediator>(),
        mapster: gh<_i79.Mapster>(),
      ));
  gh.singleton<_i124.AuthMapsterRegistrar>(
      _i124.AuthMapsterRegistrar(gh<_i79.Mapster>())..register());
  gh.singleton<_i125.AuthMediatorRegistrar>(
      _i125.AuthMediatorRegistrar(gh<_i83.Mediator>())..register());
  gh.singleton<_i126.CancelFriendBidCommandHandler>(
      _i126.CancelFriendBidCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i127.ChangePersonalInfoCommandHandler>(
      _i127.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i12.EndUserRepository>()));
  gh.singleton<_i128.CommentPostCommandHandler>(_i128.CommentPostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i129.CommonMapsterRegistrar>(
      _i129.CommonMapsterRegistrar(gh<_i79.Mapster>())..register());
  gh.singleton<_i130.CreatePostCommandHandler>(_i130.CreatePostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.factory<_i131.FeedController>(() => _i131.FeedController(
        mediator: gh<_i83.Mediator>(),
        mapster: gh<_i79.Mapster>(),
      ));
  gh.singleton<_i132.FeedMapsterRegistrar>(
      _i132.FeedMapsterRegistrar(gh<_i79.Mapster>())..register());
  gh.singleton<_i133.FeedMediatorRegistrar>(
      _i133.FeedMediatorRegistrar(gh<_i83.Mediator>())..register());
  gh.singleton<_i134.GetAllUserQueryHandler>(_i134.GetAllUserQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i135.GetDevicesQueryHandler>(_i135.GetDevicesQueryHandler(
    tokenRepository: gh<_i12.TokenRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i136.GetFeedQueryHandler>(_i136.GetFeedQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i137.GetFriendsQueryHandler>(_i137.GetFriendsQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i138.GetMediaQueryHandler>(
      _i138.GetMediaQueryHandler(mediaRepository: gh<_i12.MediaRepository>()));
  gh.singleton<_i139.GetPostCommentQueryHandler>(
      _i139.GetPostCommentQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i140.GetPostCommentsQueryHandler>(
      _i140.GetPostCommentsQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i141.GetPostQueryHandler>(_i141.GetPostQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i142.GetRulesQueryHandler>(
      _i142.GetRulesQueryHandler(rulesRepository: gh<_i12.RulesRepository>()));
  gh.singleton<_i143.GetSubscribersQueryHandler>(
      _i143.GetSubscribersQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i144.GetSubscriptionsQueryHandler>(
      _i144.GetSubscriptionsQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i145.GetTagsQueryHandler>(
      _i145.GetTagsQueryHandler(tagRepository: gh<_i12.TagRepository>()));
  gh.singleton<_i146.GetUserByIDQueryHandler>(_i146.GetUserByIDQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i147.GetUserByNickQueryHandler>(_i147.GetUserByNickQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i148.GetUserInfoQueryHandler>(_i148.GetUserInfoQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i149.GetUserPostsQueryHandler>(_i149.GetUserPostsQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i150.LikePostCommandHandler>(_i150.LikePostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i151.LikePostCommentCommandHandler>(
      _i151.LikePostCommentCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i79.Mapster>(),
  ));
  gh.singleton<_i152.LogInQueryHandler>(_i152.LogInQueryHandler(
    jwtTokenService: gh<_i118.JwtTokenService>(),
    hashService: gh<_i30.HashService>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    passwordHashRepository: gh<_i12.PasswordHashRepository>(),
    tokenRepository: gh<_i12.TokenRepository>(),
    dateTimeProvider: gh<_i11.DateTimeProvider>(),
  ));
  gh.singleton<_i153.LogOutCommandHandler>(_i153.LogOutCommandHandler(
    jwtTokenService: gh<_i118.JwtTokenService>(),
    tokenRepository: gh<_i12.TokenRepository>(),
  ));
  gh.factory<_i154.MediaController>(() => _i154.MediaController(
        mediator: gh<_i83.Mediator>(),
        mapster: gh<_i79.Mapster>(),
      ));
  gh.singleton<_i155.MediaMediatorRegistrar>(
      _i155.MediaMediatorRegistrar(gh<_i83.Mediator>())..register());
  gh.singleton<_i156.RefreshTokenCommandHandler>(
      _i156.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i118.JwtTokenService>(),
    tokenRepository: gh<_i12.TokenRepository>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    dateTimeProvider: gh<_i11.DateTimeProvider>(),
  ));
  gh.singleton<_i157.RegisterCommandHandler>(_i157.RegisterCommandHandler(
    jwtTokenService: gh<_i118.JwtTokenService>(),
    hashService: gh<_i158.HashService>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    passwordHashRepository: gh<_i12.PasswordHashRepository>(),
    tokenRepository: gh<_i12.TokenRepository>(),
    dateTimeProvider: gh<_i158.DateTimeProvider>(),
  ));
  gh.singleton<_i159.RemoveDeviceCommandHandler>(
      _i159.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i12.TokenRepository>(),
    passwordHashRepository: gh<_i12.PasswordHashRepository>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    hashService: gh<_i7.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i160.EnvModule {}

class _$MapsterModule extends _i161.MapsterModule {}

class _$MediatorModule extends _i162.MediatorModule {}
