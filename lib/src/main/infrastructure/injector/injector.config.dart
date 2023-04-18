// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i33;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i128;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i161;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i93;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i136;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i47;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i37;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i122;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i123;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i36;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i121;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i74;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i155;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i79;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i158;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i91;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i159;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i92;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i144;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i154;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i78;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i118;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i120;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i119;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i75;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i40;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i58;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i125;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i126;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i124;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i100;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i7;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i11;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i31;
import 'package:itrust_server/src/features/common/common.dart' as _i160;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i32;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i8;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i130;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i137;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i147;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i52;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i133;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i134;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i48;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i132;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_handler.dart'
    as _i140;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/media/infrastructure/json_converters/get_media_request_json_converter.dart'
    as _i51;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mapster_registrar.dart'
    as _i81;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mediator_registrar.dart'
    as _i157;
import 'package:itrust_server/src/features/media/presentation/contracts/contracts.dart'
    as _i50;
import 'package:itrust_server/src/features/media/presentation/controllers/media_controller.dart'
    as _i156;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i129;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i131;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i6;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i152;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i76;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i153;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i77;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i109;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i110;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i111;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i112;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i143;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i141;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i20;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i142;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i21;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_handler.dart'
    as _i151;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i60;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i62;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i64;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i63;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i65;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_user_posts_request_json_converter.dart'
    as _i66;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i67;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i68;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i69;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i70;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i87;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i88;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i59;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i61;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i86;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_handler.dart'
    as _i127;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_handler.dart'
    as _i94;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_validator.dart'
    as _i95;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_handler.dart'
    as _i96;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_validator.dart'
    as _i97;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_handler.dart'
    as _i98;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_validator.dart'
    as _i99;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i103;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i104;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_handler.dart'
    as _i113;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_validator.dart'
    as _i114;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_handler.dart'
    as _i135;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i138;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_handler.dart'
    as _i139;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_handler.dart'
    as _i145;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_handler.dart'
    as _i146;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i148;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i149;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i150;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_for_user_request_json_converter.dart'
    as _i72;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i42;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_users_request_json_converter.dart'
    as _i54;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/respond_friend_bid_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/user_action_request_json_converter.dart'
    as _i35;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i116;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i117;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i34;
import 'package:itrust_server/src/features/user/presentation/contracts/get_for_user_request/get_for_user_request.dart'
    as _i71;
import 'package:itrust_server/src/features/user/presentation/contracts/get_users_request/get_users_request.dart'
    as _i53;
import 'package:itrust_server/src/features/user/presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart'
    as _i44;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i115;
import 'package:itrust_server/src/repositories/implementations/end_user_activity_repository.dart'
    as _i10;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i13;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i83;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i85;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i90;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i102;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i105;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i107;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i108;
import 'package:itrust_server/src/repositories/interfaces/end_user_activity_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i12;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i82;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i89;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i101;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i106;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i73;
import 'package:json_annotation/json_annotation.dart' as _i56;
import 'package:mapster/mapster.dart' as _i80;
import 'package:mediator/mediator.dart' as _i84;

import '../../../env/env_module.dart' as _i162;
import '../third_party/mapster_module.dart' as _i163;
import '../third_party/mediator_module.dart' as _i164;

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
  gh.singleton<_i18.GetInboxFriendBidsQueryValidator>(
      _i18.GetInboxFriendBidsQueryValidator());
  gh.singleton<_i19.GetMediaQueryValidator>(_i19.GetMediaQueryValidator());
  gh.singleton<_i20.GetPostCommentQueryValidator>(
      _i20.GetPostCommentQueryValidator());
  gh.singleton<_i21.GetPostCommentsQueryValidator>(
      _i21.GetPostCommentsQueryValidator());
  gh.singleton<_i22.GetPostQueryValidator>(_i22.GetPostQueryValidator());
  gh.singleton<_i23.GetRulesQueryValidator>(_i23.GetRulesQueryValidator());
  gh.singleton<_i24.GetSubscribersQueryValidator>(
      _i24.GetSubscribersQueryValidator());
  gh.singleton<_i25.GetSubscriptionsQueryValidator>(
      _i25.GetSubscriptionsQueryValidator());
  gh.singleton<_i26.GetTagsQueryValidator>(_i26.GetTagsQueryValidator());
  gh.singleton<_i27.GetUserByIDQueryValidator>(
      _i27.GetUserByIDQueryValidator());
  gh.singleton<_i28.GetUserByNickQueryValidator>(
      _i28.GetUserByNickQueryValidator());
  gh.singleton<_i29.GetUserInfoQueryValidator>(
      _i29.GetUserInfoQueryValidator());
  gh.singleton<_i30.GetUserPostsQueryValidator>(
      _i30.GetUserPostsQueryValidator());
  gh.singleton<_i31.HashService>(_i32.ProdHashService());
  gh.singleton<
          _i33.JsonConverter<_i34.UserActionRequest, Map<String, Object?>>>(
      _i35.UserActionRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i36.RemoveDeviceRequest, Map<String, Object?>>>(
      _i37.RemoveDeviceRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i38.LogOutRequest, Map<String, Object?>>>(
      _i39.LogOutRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i38.LogInRequest, Map<String, Object?>>>(
      _i40.LogInRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i36.GetDevicesRequest, Map<String, Object?>>>(
      _i41.GetDevicesRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i34.GetUserByIDRequest, Map<String, Object?>>>(
      _i42.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i34.GetUserByNickRequest, Map<String, Object?>>>(
      _i43.GetUserByNickRequestJsonConverter());
  gh.singleton<
      _i33.JsonConverter<_i44.RespondFriendBidRequest,
          Map<String, Object?>>>(_i45.RespondFriendBidRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i38.GetRulesRequest, Map<String, Object?>>>(
      _i46.GetRulesRequestJsonConverter());
  gh.singleton<
      _i33.JsonConverter<_i36.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i47.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i48.GetTagsRequest, Map<String, Object?>>>(
      _i49.GetTagsRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i50.GetMediaRequest, Map<String, Object?>>>(
      _i51.GetMediaRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i48.GetFeedRequest, Map<String, Object?>>>(
      _i52.GetFeedRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i53.GetUsersRequest, Map<String, Object?>>>(
      _i54.GetUsersRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i38.VerifyTokenRequest, Map<String, Object?>>>(
      _i55.VerifyTokenRequestJsonConverter());
  gh.singleton<_i56.JsonConverter<_i38.RegisterRequest, Map<String, Object?>>>(
      _i57.RegisterRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i38.RefreshTokenRequest, Map<String, Object?>>>(
      _i58.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i59.CommentPostRequest, Map<String, Object?>>>(
      _i60.CommentPostRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i61.CreatePostRequest, Map<String, Object?>>>(
      _i62.CreatePostRequestJsonConverter());
  gh.singleton<
      _i33.JsonConverter<_i61.GetPostCommentsRequest,
          Map<String, Object?>>>(_i63.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i61.GetPostCommentRequest, Map<String, Object?>>>(
      _i64.GetPostCommentRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i61.GetPostRequest, Map<String, Object?>>>(
      _i65.GetPostRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i61.GetUserPostsRequest, Map<String, Object?>>>(
      _i66.GetUserPostsRequestJsonConverter());
  gh.singleton<
      _i33.JsonConverter<_i61.LikePostCommentRequest,
          Map<String, Object?>>>(_i67.LikePostCommentRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i61.LikePostRequest, Map<String, Object?>>>(
      _i68.LikePostRequestJsonConverter());
  gh.singleton<
      _i33.JsonConverter<_i61.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i69.UnlikePostCommentRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i61.UnlikePostRequest, Map<String, Object?>>>(
      _i70.UnlikePostRequestJsonConverter());
  gh.singleton<
          _i33.JsonConverter<_i71.GetForUserRequest, Map<String, Object?>>>(
      _i72.GetForUserRequestJsonConverter());
  gh.singleton<_i73.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i74.JwtTokenService>(
      _i75.ProdJwtTokenService(gh<_i73.JwtSettings>()));
  gh.singleton<_i76.LikePostCommandValidator>(_i76.LikePostCommandValidator());
  gh.singleton<_i77.LikePostCommentCommandValidator>(
      _i77.LikePostCommentCommandValidator());
  gh.singleton<_i78.LogInQueryValidator>(_i78.LogInQueryValidator());
  gh.singleton<_i79.LogOutCommandValidator>(_i79.LogOutCommandValidator());
  gh.singleton<_i80.Mapster>(mapsterModule.mapster);
  gh.singleton<_i81.MediaMapsterRegistrar>(
      _i81.MediaMapsterRegistrar(gh<_i80.Mapster>())..register());
  gh.singleton<_i82.MediaRepository>(
    _i83.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i84.Mediator>(mediatorModule.mediator);
  gh.singleton<_i12.PasswordHashRepository>(
    _i85.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i86.PostController>(() => _i86.PostController(
        mediator: gh<_i84.Mediator>(),
        mapster: gh<_i80.Mapster>(),
      ));
  gh.singleton<_i87.PostMapsterRegistrar>(
      _i87.PostMapsterRegistrar(gh<_i80.Mapster>())..register());
  gh.singleton<_i88.PostMediatorRegistrar>(
      _i88.PostMediatorRegistrar(gh<_i84.Mediator>())..register());
  gh.singleton<_i89.PostRepository>(
    _i90.DevPostRepository(
      dateTimeProvider: gh<_i11.DateTimeProvider>(),
      mediaRepository: gh<_i82.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i91.RefreshTokenCommandValidator>(
      _i91.RefreshTokenCommandValidator());
  gh.singleton<_i92.RegisterCommandValidator>(_i92.RegisterCommandValidator());
  gh.singleton<_i93.RemoveDeviceCommandValidator>(
      _i93.RemoveDeviceCommandValidator());
  gh.singleton<_i94.RemoveFriendCommandHandler>(_i94.RemoveFriendCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i95.RemoveFriendCommandValidator>(
      _i95.RemoveFriendCommandValidator());
  gh.singleton<_i96.RemoveSubscriberCommandHandler>(
      _i96.RemoveSubscriberCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i97.RemoveSubscriberCommandValidator>(
      _i97.RemoveSubscriberCommandValidator());
  gh.singleton<_i98.RespondFriendBidCommandHandler>(
      _i98.RespondFriendBidCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i99.RespondFriendBidCommandValidator>(
      _i99.RespondFriendBidCommandValidator());
  gh.factory<_i100.RulesController>(() => _i100.RulesController(
        mediator: gh<_i84.Mediator>(),
        mapster: gh<_i80.Mapster>(),
      ));
  gh.singleton<_i101.RulesRepository>(
    _i102.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i103.SendFriendBidCommandHandler>(
      _i103.SendFriendBidCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i104.SendFriendBidCommandValidator>(
      _i104.SendFriendBidCommandValidator());
  gh.singleton<_i12.StaffUserRepository>(
    _i105.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i106.TagRepository>(
    _i107.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i12.TokenRepository>(
    _i108.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i109.UnlikePostCommandHandler>(_i109.UnlikePostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i110.UnlikePostCommandValidator>(
      _i110.UnlikePostCommandValidator());
  gh.singleton<_i111.UnlikePostCommentCommandHandler>(
      _i111.UnlikePostCommentCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i112.UnlikePostCommentCommandValidator>(
      _i112.UnlikePostCommentCommandValidator());
  gh.singleton<_i113.UnsubscribeCommandHandler>(_i113.UnsubscribeCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i114.UnsubscribeCommandValidator>(
      _i114.UnsubscribeCommandValidator());
  gh.factory<_i115.UserController>(() => _i115.UserController(
        mediator: gh<_i84.Mediator>(),
        mapster: gh<_i80.Mapster>(),
      ));
  gh.singleton<_i116.UserMapsterRegistrar>(
      _i116.UserMapsterRegistrar(gh<_i80.Mapster>())..register());
  gh.singleton<_i117.UserMediatorRegistrar>(
      _i117.UserMediatorRegistrar(gh<_i84.Mediator>())..register());
  gh.singleton<_i118.VerifyTokenQueryHandler>(_i118.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i119.JwtTokenService>(),
    tokenRepository: gh<_i12.TokenRepository>(),
  ));
  gh.singleton<_i120.VerifyTokenQueryValidator>(
      _i120.VerifyTokenQueryValidator());
  gh.factory<_i121.AccountController>(() => _i121.AccountController(
        mediator: gh<_i84.Mediator>(),
        mapster: gh<_i80.Mapster>(),
      ));
  gh.singleton<_i122.AccountMapsterRegistrar>(
      _i122.AccountMapsterRegistrar(gh<_i80.Mapster>())..register());
  gh.singleton<_i123.AccountMediatorRegistrar>(
      _i123.AccountMediatorRegistrar(gh<_i84.Mediator>())..register());
  gh.factory<_i124.AuthController>(() => _i124.AuthController(
        mediator: gh<_i84.Mediator>(),
        mapster: gh<_i80.Mapster>(),
      ));
  gh.singleton<_i125.AuthMapsterRegistrar>(
      _i125.AuthMapsterRegistrar(gh<_i80.Mapster>())..register());
  gh.singleton<_i126.AuthMediatorRegistrar>(
      _i126.AuthMediatorRegistrar(gh<_i84.Mediator>())..register());
  gh.singleton<_i127.CancelFriendBidCommandHandler>(
      _i127.CancelFriendBidCommandHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i128.ChangePersonalInfoCommandHandler>(
      _i128.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i12.EndUserRepository>()));
  gh.singleton<_i129.CommentPostCommandHandler>(_i129.CommentPostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i130.CommonMapsterRegistrar>(
      _i130.CommonMapsterRegistrar(gh<_i80.Mapster>())..register());
  gh.singleton<_i131.CreatePostCommandHandler>(_i131.CreatePostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.factory<_i132.FeedController>(() => _i132.FeedController(
        mediator: gh<_i84.Mediator>(),
        mapster: gh<_i80.Mapster>(),
      ));
  gh.singleton<_i133.FeedMapsterRegistrar>(
      _i133.FeedMapsterRegistrar(gh<_i80.Mapster>())..register());
  gh.singleton<_i134.FeedMediatorRegistrar>(
      _i134.FeedMediatorRegistrar(gh<_i84.Mediator>())..register());
  gh.singleton<_i135.GetAllUserQueryHandler>(_i135.GetAllUserQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i136.GetDevicesQueryHandler>(_i136.GetDevicesQueryHandler(
    tokenRepository: gh<_i12.TokenRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i137.GetFeedQueryHandler>(_i137.GetFeedQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i138.GetFriendsQueryHandler>(_i138.GetFriendsQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i139.GetInboxFriendBidsQueryHandler>(
      _i139.GetInboxFriendBidsQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i140.GetMediaQueryHandler>(
      _i140.GetMediaQueryHandler(mediaRepository: gh<_i12.MediaRepository>()));
  gh.singleton<_i141.GetPostCommentQueryHandler>(
      _i141.GetPostCommentQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i142.GetPostCommentsQueryHandler>(
      _i142.GetPostCommentsQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i143.GetPostQueryHandler>(_i143.GetPostQueryHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i144.GetRulesQueryHandler>(
      _i144.GetRulesQueryHandler(rulesRepository: gh<_i12.RulesRepository>()));
  gh.singleton<_i145.GetSubscribersQueryHandler>(
      _i145.GetSubscribersQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i146.GetSubscriptionsQueryHandler>(
      _i146.GetSubscriptionsQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i147.GetTagsQueryHandler>(
      _i147.GetTagsQueryHandler(tagRepository: gh<_i12.TagRepository>()));
  gh.singleton<_i148.GetUserByIDQueryHandler>(_i148.GetUserByIDQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i149.GetUserByNickQueryHandler>(_i149.GetUserByNickQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i150.GetUserInfoQueryHandler>(_i150.GetUserInfoQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
    endUserActivityRepository: gh<_i12.EndUserActivityRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i151.GetUserPostsQueryHandler>(_i151.GetUserPostsQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i152.LikePostCommandHandler>(_i152.LikePostCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mediaRepository: gh<_i12.MediaRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i153.LikePostCommentCommandHandler>(
      _i153.LikePostCommentCommandHandler(
    postRepository: gh<_i12.PostRepository>(),
    mapster: gh<_i80.Mapster>(),
  ));
  gh.singleton<_i154.LogInQueryHandler>(_i154.LogInQueryHandler(
    jwtTokenService: gh<_i119.JwtTokenService>(),
    hashService: gh<_i31.HashService>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    passwordHashRepository: gh<_i12.PasswordHashRepository>(),
    tokenRepository: gh<_i12.TokenRepository>(),
    dateTimeProvider: gh<_i11.DateTimeProvider>(),
  ));
  gh.singleton<_i155.LogOutCommandHandler>(_i155.LogOutCommandHandler(
    jwtTokenService: gh<_i119.JwtTokenService>(),
    tokenRepository: gh<_i12.TokenRepository>(),
  ));
  gh.factory<_i156.MediaController>(() => _i156.MediaController(
        mediator: gh<_i84.Mediator>(),
        mapster: gh<_i80.Mapster>(),
      ));
  gh.singleton<_i157.MediaMediatorRegistrar>(
      _i157.MediaMediatorRegistrar(gh<_i84.Mediator>())..register());
  gh.singleton<_i158.RefreshTokenCommandHandler>(
      _i158.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i119.JwtTokenService>(),
    tokenRepository: gh<_i12.TokenRepository>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    dateTimeProvider: gh<_i11.DateTimeProvider>(),
  ));
  gh.singleton<_i159.RegisterCommandHandler>(_i159.RegisterCommandHandler(
    jwtTokenService: gh<_i119.JwtTokenService>(),
    hashService: gh<_i160.HashService>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    passwordHashRepository: gh<_i12.PasswordHashRepository>(),
    tokenRepository: gh<_i12.TokenRepository>(),
    dateTimeProvider: gh<_i160.DateTimeProvider>(),
  ));
  gh.singleton<_i161.RemoveDeviceCommandHandler>(
      _i161.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i12.TokenRepository>(),
    passwordHashRepository: gh<_i12.PasswordHashRepository>(),
    endUserRepository: gh<_i12.EndUserRepository>(),
    hashService: gh<_i7.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i162.EnvModule {}

class _$MapsterModule extends _i163.MapsterModule {}

class _$MediatorModule extends _i164.MediatorModule {}
