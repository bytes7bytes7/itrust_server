// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i104;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i129;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i78;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i111;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i40;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i99;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i100;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i38;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i98;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i59;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i125;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i64;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i126;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i76;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i127;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i77;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i117;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i124;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i63;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i95;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i97;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i96;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i60;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i27;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i30;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i50;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i28;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i102;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i103;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i26;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i101;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i79;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i6;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i75;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i23;
import 'package:itrust_server/src/features/common/common.dart' as _i128;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i24;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i106;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i112;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i118;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i53;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i52;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i109;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i110;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i51;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i108;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i105;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i107;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i122;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i61;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i123;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i62;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i88;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i89;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i90;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i91;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i116;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i114;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i115;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i32;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i42;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i33;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i34;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i71;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i72;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i48;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i31;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i70;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i82;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i83;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i113;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i119;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i20;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i120;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i21;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i121;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_friends_request_json_converter.dart'
    as _i36;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i56;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i57;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_info_request_json_converter.dart'
    as _i47;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/send_friend_bid_request_json_converter.dart'
    as _i37;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i93;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i94;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i35;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i92;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/implementations/friend_bid_repository.dart'
    as _i11;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i67;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i69;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i74;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i81;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i84;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i86;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i87;
import 'package:itrust_server/src/repositories/interfaces/friend_bid_repository.dart'
    as _i10;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i8;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i66;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i73;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i80;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i85;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i58;
import 'package:json_annotation/json_annotation.dart' as _i54;
import 'package:mapster/mapster.dart' as _i65;
import 'package:mediator/mediator.dart' as _i68;

import '../../../env/env_module.dart' as _i130;
import '../third_party/mapster_module.dart' as _i131;
import '../third_party/mediator_module.dart' as _i132;

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
  gh.singleton<_i3.ChangePersonalInfoCommandValidator>(
      _i3.ChangePersonalInfoCommandValidator());
  gh.singleton<_i4.CommentPostCommandValidator>(
      _i4.CommentPostCommandValidator());
  gh.singleton<_i5.CreatePostCommandValidator>(
      _i5.CreatePostCommandValidator());
  gh.singleton<_i6.DateTimeProvider>(_i7.ProdDateTimeProvider());
  gh.singleton<_i8.EndUserRepository>(
    _i9.DevEndUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i10.FriendBidRepository>(
    _i11.DevFriendBidRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i12.GetDevicesQueryValidator>(_i12.GetDevicesQueryValidator());
  gh.singleton<_i13.GetFeedQueryValidator>(_i13.GetFeedQueryValidator());
  gh.singleton<_i14.GetFriendsQueryValidator>(_i14.GetFriendsQueryValidator());
  gh.singleton<_i15.GetPostCommentQueryValidator>(
      _i15.GetPostCommentQueryValidator());
  gh.singleton<_i16.GetPostCommentsQueryValidator>(
      _i16.GetPostCommentsQueryValidator());
  gh.singleton<_i17.GetPostQueryValidator>(_i17.GetPostQueryValidator());
  gh.singleton<_i18.GetRulesQueryValidator>(_i18.GetRulesQueryValidator());
  gh.singleton<_i19.GetTagsQueryValidator>(_i19.GetTagsQueryValidator());
  gh.singleton<_i20.GetUserByIDQueryValidator>(
      _i20.GetUserByIDQueryValidator());
  gh.singleton<_i21.GetUserByNickQueryValidator>(
      _i21.GetUserByNickQueryValidator());
  gh.singleton<_i22.GetUserInfoQueryValidator>(
      _i22.GetUserInfoQueryValidator());
  gh.singleton<_i23.HashService>(_i24.ProdHashService());
  gh.singleton<_i25.JsonConverter<_i26.LogInRequest, Map<String, Object?>>>(
      _i27.LogInRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i26.VerifyTokenRequest, Map<String, Object?>>>(
      _i28.VerifyTokenRequestJsonConverter());
  gh.singleton<_i25.JsonConverter<_i26.GetRulesRequest, Map<String, Object?>>>(
      _i29.GetRulesRequestJsonConverter());
  gh.singleton<_i25.JsonConverter<_i26.LogOutRequest, Map<String, Object?>>>(
      _i30.LogOutRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i31.GetPostCommentRequest, Map<String, Object?>>>(
      _i32.GetPostCommentRequestJsonConverter());
  gh.singleton<
      _i25.JsonConverter<_i31.LikePostCommentRequest,
          Map<String, Object?>>>(_i33.LikePostCommentRequestJsonConverter());
  gh.singleton<
      _i25.JsonConverter<_i31.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i34.UnlikePostCommentRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i35.GetFriendsRequest, Map<String, Object?>>>(
      _i36.GetFriendsRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i35.SendFriendBidRequest, Map<String, Object?>>>(
      _i37.SendFriendBidRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i38.RemoveDeviceRequest, Map<String, Object?>>>(
      _i39.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i38.GetDevicesRequest, Map<String, Object?>>>(
      _i40.GetDevicesRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i31.CreatePostRequest, Map<String, Object?>>>(
      _i41.CreatePostRequestJsonConverter());
  gh.singleton<
      _i25.JsonConverter<_i31.GetPostCommentsRequest,
          Map<String, Object?>>>(_i42.GetPostCommentsRequestJsonConverter());
  gh.singleton<_i25.JsonConverter<_i31.GetPostRequest, Map<String, Object?>>>(
      _i43.GetPostRequestJsonConverter());
  gh.singleton<_i25.JsonConverter<_i31.LikePostRequest, Map<String, Object?>>>(
      _i44.LikePostRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i31.UnlikePostRequest, Map<String, Object?>>>(
      _i45.UnlikePostRequestJsonConverter());
  gh.singleton<
      _i25.JsonConverter<_i38.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i46.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i35.GetUserInfoRequest, Map<String, Object?>>>(
      _i47.GetUserInfoRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i48.CommentPostRequest, Map<String, Object?>>>(
      _i49.CommentPostRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i26.RefreshTokenRequest, Map<String, Object?>>>(
      _i50.RefreshTokenRequestJsonConverter());
  gh.singleton<_i25.JsonConverter<_i51.GetTagsRequest, Map<String, Object?>>>(
      _i52.GetTagsRequestJsonConverter());
  gh.singleton<_i25.JsonConverter<_i51.GetFeedRequest, Map<String, Object?>>>(
      _i53.GetFeedRequestJsonConverter());
  gh.singleton<_i54.JsonConverter<_i26.RegisterRequest, Map<String, Object?>>>(
      _i55.RegisterRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i35.GetUserByIDRequest, Map<String, Object?>>>(
      _i56.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i35.GetUserByNickRequest, Map<String, Object?>>>(
      _i57.GetUserByNickRequestJsonConverter());
  gh.singleton<_i58.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i59.JwtTokenService>(
      _i60.ProdJwtTokenService(gh<_i58.JwtSettings>()));
  gh.singleton<_i61.LikePostCommandValidator>(_i61.LikePostCommandValidator());
  gh.singleton<_i62.LikePostCommentCommandValidator>(
      _i62.LikePostCommentCommandValidator());
  gh.singleton<_i63.LogInQueryValidator>(_i63.LogInQueryValidator());
  gh.singleton<_i64.LogOutCommandValidator>(_i64.LogOutCommandValidator());
  gh.singleton<_i65.Mapster>(mapsterModule.mapster);
  gh.singleton<_i66.MediaRepository>(
    _i67.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i68.Mediator>(mediatorModule.mediator);
  gh.singleton<_i8.PasswordHashRepository>(
    _i69.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i70.PostController>(() => _i70.PostController(
        mediator: gh<_i68.Mediator>(),
        mapster: gh<_i65.Mapster>(),
      ));
  gh.singleton<_i71.PostMapsterRegistrar>(
      _i71.PostMapsterRegistrar(gh<_i65.Mapster>())..register());
  gh.singleton<_i72.PostMediatorRegistrar>(
      _i72.PostMediatorRegistrar(gh<_i68.Mediator>())..register());
  gh.singleton<_i73.PostRepository>(
    _i74.DevPostRepository(
      dateTimeProvider: gh<_i75.DateTimeProvider>(),
      mediaRepository: gh<_i66.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i76.RefreshTokenCommandValidator>(
      _i76.RefreshTokenCommandValidator());
  gh.singleton<_i77.RegisterCommandValidator>(_i77.RegisterCommandValidator());
  gh.singleton<_i78.RemoveDeviceCommandValidator>(
      _i78.RemoveDeviceCommandValidator());
  gh.factory<_i79.RulesController>(() => _i79.RulesController(
        mediator: gh<_i68.Mediator>(),
        mapster: gh<_i65.Mapster>(),
      ));
  gh.singleton<_i80.RulesRepository>(
    _i81.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i82.SendFriendBidCommandHandler>(
      _i82.SendFriendBidCommandHandler(
    friendBidRepository: gh<_i8.FriendBidRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i83.SendFriendBidCommandValidator>(
      _i83.SendFriendBidCommandValidator());
  gh.singleton<_i8.StaffUserRepository>(
    _i84.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i85.TagRepository>(
    _i86.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.TokenRepository>(
    _i87.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i88.UnlikePostCommandHandler>(_i88.UnlikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i89.UnlikePostCommandValidator>(
      _i89.UnlikePostCommandValidator());
  gh.singleton<_i90.UnlikePostCommentCommandHandler>(
      _i90.UnlikePostCommentCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i91.UnlikePostCommentCommandValidator>(
      _i91.UnlikePostCommentCommandValidator());
  gh.factory<_i92.UserController>(() => _i92.UserController(
        mediator: gh<_i68.Mediator>(),
        mapster: gh<_i65.Mapster>(),
      ));
  gh.singleton<_i93.UserMapsterRegistrar>(
      _i93.UserMapsterRegistrar(gh<_i65.Mapster>())..register());
  gh.singleton<_i94.UserMediatorRegistrar>(
      _i94.UserMediatorRegistrar(gh<_i68.Mediator>())..register());
  gh.singleton<_i95.VerifyTokenQueryHandler>(_i95.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i96.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i97.VerifyTokenQueryValidator>(
      _i97.VerifyTokenQueryValidator());
  gh.factory<_i98.AccountController>(() => _i98.AccountController(
        mediator: gh<_i68.Mediator>(),
        mapster: gh<_i65.Mapster>(),
      ));
  gh.singleton<_i99.AccountMapsterRegistrar>(
      _i99.AccountMapsterRegistrar(gh<_i65.Mapster>())..register());
  gh.singleton<_i100.AccountMediatorRegistrar>(
      _i100.AccountMediatorRegistrar(gh<_i68.Mediator>())..register());
  gh.factory<_i101.AuthController>(() => _i101.AuthController(
        mediator: gh<_i68.Mediator>(),
        mapster: gh<_i65.Mapster>(),
      ));
  gh.singleton<_i102.AuthMapsterRegistrar>(
      _i102.AuthMapsterRegistrar(gh<_i65.Mapster>())..register());
  gh.singleton<_i103.AuthMediatorRegistrar>(
      _i103.AuthMediatorRegistrar(gh<_i68.Mediator>())..register());
  gh.singleton<_i104.ChangePersonalInfoCommandHandler>(
      _i104.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i8.EndUserRepository>()));
  gh.singleton<_i105.CommentPostCommandHandler>(_i105.CommentPostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i106.CommonMapsterRegistrar>(
      _i106.CommonMapsterRegistrar(gh<_i65.Mapster>())..register());
  gh.singleton<_i107.CreatePostCommandHandler>(_i107.CreatePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.factory<_i108.FeedController>(() => _i108.FeedController(
        mediator: gh<_i68.Mediator>(),
        mapster: gh<_i65.Mapster>(),
      ));
  gh.singleton<_i109.FeedMapsterRegistrar>(
      _i109.FeedMapsterRegistrar(gh<_i65.Mapster>())..register());
  gh.singleton<_i110.FeedMediatorRegistrar>(
      _i110.FeedMediatorRegistrar(gh<_i68.Mediator>())..register());
  gh.singleton<_i111.GetDevicesQueryHandler>(_i111.GetDevicesQueryHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i112.GetFeedQueryHandler>(_i112.GetFeedQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i113.GetFriendsQueryHandler>(_i113.GetFriendsQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i114.GetPostCommentQueryHandler>(
      _i114.GetPostCommentQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i115.GetPostCommentsQueryHandler>(
      _i115.GetPostCommentsQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i116.GetPostQueryHandler>(_i116.GetPostQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i117.GetRulesQueryHandler>(
      _i117.GetRulesQueryHandler(rulesRepository: gh<_i8.RulesRepository>()));
  gh.singleton<_i118.GetTagsQueryHandler>(
      _i118.GetTagsQueryHandler(tagRepository: gh<_i8.TagRepository>()));
  gh.singleton<_i119.GetUserByIDQueryHandler>(_i119.GetUserByIDQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i120.GetUserByNickQueryHandler>(_i120.GetUserByNickQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i121.GetUserInfoQueryHandler>(_i121.GetUserInfoQueryHandler(
    friendBidRepository: gh<_i8.FriendBidRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i122.LikePostCommandHandler>(_i122.LikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i123.LikePostCommentCommandHandler>(
      _i123.LikePostCommentCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i65.Mapster>(),
  ));
  gh.singleton<_i124.LogInQueryHandler>(_i124.LogInQueryHandler(
    jwtTokenService: gh<_i96.JwtTokenService>(),
    hashService: gh<_i23.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i75.DateTimeProvider>(),
  ));
  gh.singleton<_i125.LogOutCommandHandler>(_i125.LogOutCommandHandler(
    jwtTokenService: gh<_i96.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i126.RefreshTokenCommandHandler>(
      _i126.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i96.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    dateTimeProvider: gh<_i75.DateTimeProvider>(),
  ));
  gh.singleton<_i127.RegisterCommandHandler>(_i127.RegisterCommandHandler(
    jwtTokenService: gh<_i96.JwtTokenService>(),
    hashService: gh<_i128.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i128.DateTimeProvider>(),
  ));
  gh.singleton<_i129.RemoveDeviceCommandHandler>(
      _i129.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    hashService: gh<_i6.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i130.EnvModule {}

class _$MapsterModule extends _i131.MapsterModule {}

class _$MediatorModule extends _i132.MediatorModule {}
