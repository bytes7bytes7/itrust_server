// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i97;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i121;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i73;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i104;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i48;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i32;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i31;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i92;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i93;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i30;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i91;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i54;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i117;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i59;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i118;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i71;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i119;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i72;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i110;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i116;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i58;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i88;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i90;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i89;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i37;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i40;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i95;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i96;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i36;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i94;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i74;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i6;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i70;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i20;
import 'package:itrust_server/src/features/common/common.dart' as _i120;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i21;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i99;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i105;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i111;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i27;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i24;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i102;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i103;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i23;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i101;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i98;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i100;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i114;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i56;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i115;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i57;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i81;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i82;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i83;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i84;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i109;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i107;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i108;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i42;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i29;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i35;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i52;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i47;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i66;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i67;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i44;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i28;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i65;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i106;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i112;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i113;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_friends_request_json_converter.dart'
    as _i33;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i26;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i34;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i86;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i87;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i25;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i85;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i62;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i64;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i69;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i76;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i77;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i79;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i80;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i8;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i61;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i68;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i75;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i78;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i53;
import 'package:json_annotation/json_annotation.dart' as _i50;
import 'package:mapster/mapster.dart' as _i60;
import 'package:mediator/mediator.dart' as _i63;

import '../../../env/env_module.dart' as _i122;
import '../third_party/mapster_module.dart' as _i123;
import '../third_party/mediator_module.dart' as _i124;

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
  gh.singleton<_i10.GetDevicesQueryValidator>(_i10.GetDevicesQueryValidator());
  gh.singleton<_i11.GetFeedQueryValidator>(_i11.GetFeedQueryValidator());
  gh.singleton<_i12.GetFriendsQueryValidator>(_i12.GetFriendsQueryValidator());
  gh.singleton<_i13.GetPostCommentQueryValidator>(
      _i13.GetPostCommentQueryValidator());
  gh.singleton<_i14.GetPostCommentsQueryValidator>(
      _i14.GetPostCommentsQueryValidator());
  gh.singleton<_i15.GetPostQueryValidator>(_i15.GetPostQueryValidator());
  gh.singleton<_i16.GetRulesQueryValidator>(_i16.GetRulesQueryValidator());
  gh.singleton<_i17.GetTagsQueryValidator>(_i17.GetTagsQueryValidator());
  gh.singleton<_i18.GetUserByIDQueryValidator>(
      _i18.GetUserByIDQueryValidator());
  gh.singleton<_i19.GetUserByNickQueryValidator>(
      _i19.GetUserByNickQueryValidator());
  gh.singleton<_i20.HashService>(_i21.ProdHashService());
  gh.singleton<_i22.JsonConverter<_i23.GetTagsRequest, Map<String, Object?>>>(
      _i24.GetTagsRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i25.GetUserByIDRequest, Map<String, Object?>>>(
      _i26.GetUserByIDRequestJsonConverter());
  gh.singleton<_i22.JsonConverter<_i23.GetFeedRequest, Map<String, Object?>>>(
      _i27.GetFeedRequestJsonConverter());
  gh.singleton<_i22.JsonConverter<_i28.GetPostRequest, Map<String, Object?>>>(
      _i29.GetPostRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i30.RemoveDeviceRequest, Map<String, Object?>>>(
      _i31.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i30.GetDevicesRequest, Map<String, Object?>>>(
      _i32.GetDevicesRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i25.GetFriendsRequest, Map<String, Object?>>>(
      _i33.GetFriendsRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i25.GetUserByNickRequest, Map<String, Object?>>>(
      _i34.GetUserByNickRequestJsonConverter());
  gh.singleton<
      _i22.JsonConverter<_i28.LikePostCommentRequest,
          Map<String, Object?>>>(_i35.LikePostCommentRequestJsonConverter());
  gh.singleton<_i22.JsonConverter<_i36.GetRulesRequest, Map<String, Object?>>>(
      _i37.GetRulesRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i36.RefreshTokenRequest, Map<String, Object?>>>(
      _i38.RefreshTokenRequestJsonConverter());
  gh.singleton<_i22.JsonConverter<_i36.LogInRequest, Map<String, Object?>>>(
      _i39.LogInRequestJsonConverter());
  gh.singleton<_i22.JsonConverter<_i36.LogOutRequest, Map<String, Object?>>>(
      _i40.LogOutRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i36.VerifyTokenRequest, Map<String, Object?>>>(
      _i41.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i28.CreatePostRequest, Map<String, Object?>>>(
      _i42.CreatePostRequestJsonConverter());
  gh.singleton<
      _i22.JsonConverter<_i28.GetPostCommentsRequest,
          Map<String, Object?>>>(_i43.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i44.CommentPostRequest, Map<String, Object?>>>(
      _i45.CommentPostRequestJsonConverter());
  gh.singleton<_i22.JsonConverter<_i28.LikePostRequest, Map<String, Object?>>>(
      _i46.LikePostRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i28.UnlikePostRequest, Map<String, Object?>>>(
      _i47.UnlikePostRequestJsonConverter());
  gh.singleton<
      _i22.JsonConverter<_i30.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i48.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i22.JsonConverter<_i28.GetPostCommentRequest, Map<String, Object?>>>(
      _i49.GetPostCommentRequestJsonConverter());
  gh.singleton<_i50.JsonConverter<_i36.RegisterRequest, Map<String, Object?>>>(
      _i51.RegisterRequestJsonConverter());
  gh.singleton<
      _i22.JsonConverter<_i28.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i52.UnlikePostCommentRequestJsonConverter());
  gh.singleton<_i53.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i54.JwtTokenService>(
      _i55.ProdJwtTokenService(gh<_i53.JwtSettings>()));
  gh.singleton<_i56.LikePostCommandValidator>(_i56.LikePostCommandValidator());
  gh.singleton<_i57.LikePostCommentCommandValidator>(
      _i57.LikePostCommentCommandValidator());
  gh.singleton<_i58.LogInQueryValidator>(_i58.LogInQueryValidator());
  gh.singleton<_i59.LogOutCommandValidator>(_i59.LogOutCommandValidator());
  gh.singleton<_i60.Mapster>(mapsterModule.mapster);
  gh.singleton<_i61.MediaRepository>(
    _i62.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i63.Mediator>(mediatorModule.mediator);
  gh.singleton<_i8.PasswordHashRepository>(
    _i64.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i65.PostController>(() => _i65.PostController(
        mediator: gh<_i63.Mediator>(),
        mapster: gh<_i60.Mapster>(),
      ));
  gh.singleton<_i66.PostMapsterRegistrar>(
      _i66.PostMapsterRegistrar(gh<_i60.Mapster>())..register());
  gh.singleton<_i67.PostMediatorRegistrar>(
      _i67.PostMediatorRegistrar(gh<_i63.Mediator>())..register());
  gh.singleton<_i68.PostRepository>(
    _i69.DevPostRepository(
      dateTimeProvider: gh<_i70.DateTimeProvider>(),
      mediaRepository: gh<_i61.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i71.RefreshTokenCommandValidator>(
      _i71.RefreshTokenCommandValidator());
  gh.singleton<_i72.RegisterCommandValidator>(_i72.RegisterCommandValidator());
  gh.singleton<_i73.RemoveDeviceCommandValidator>(
      _i73.RemoveDeviceCommandValidator());
  gh.factory<_i74.RulesController>(() => _i74.RulesController(
        mediator: gh<_i63.Mediator>(),
        mapster: gh<_i60.Mapster>(),
      ));
  gh.singleton<_i75.RulesRepository>(
    _i76.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.StaffUserRepository>(
    _i77.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i78.TagRepository>(
    _i79.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.TokenRepository>(
    _i80.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i81.UnlikePostCommandHandler>(_i81.UnlikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i82.UnlikePostCommandValidator>(
      _i82.UnlikePostCommandValidator());
  gh.singleton<_i83.UnlikePostCommentCommandHandler>(
      _i83.UnlikePostCommentCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i84.UnlikePostCommentCommandValidator>(
      _i84.UnlikePostCommentCommandValidator());
  gh.factory<_i85.UserController>(() => _i85.UserController(
        mediator: gh<_i63.Mediator>(),
        mapster: gh<_i60.Mapster>(),
      ));
  gh.singleton<_i86.UserMapsterRegistrar>(
      _i86.UserMapsterRegistrar(gh<_i60.Mapster>())..register());
  gh.singleton<_i87.UserMediatorRegistrar>(
      _i87.UserMediatorRegistrar(gh<_i63.Mediator>())..register());
  gh.singleton<_i88.VerifyTokenQueryHandler>(_i88.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i89.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i90.VerifyTokenQueryValidator>(
      _i90.VerifyTokenQueryValidator());
  gh.factory<_i91.AccountController>(() => _i91.AccountController(
        mediator: gh<_i63.Mediator>(),
        mapster: gh<_i60.Mapster>(),
      ));
  gh.singleton<_i92.AccountMapsterRegistrar>(
      _i92.AccountMapsterRegistrar(gh<_i60.Mapster>())..register());
  gh.singleton<_i93.AccountMediatorRegistrar>(
      _i93.AccountMediatorRegistrar(gh<_i63.Mediator>())..register());
  gh.factory<_i94.AuthController>(() => _i94.AuthController(
        mediator: gh<_i63.Mediator>(),
        mapster: gh<_i60.Mapster>(),
      ));
  gh.singleton<_i95.AuthMapsterRegistrar>(
      _i95.AuthMapsterRegistrar(gh<_i60.Mapster>())..register());
  gh.singleton<_i96.AuthMediatorRegistrar>(
      _i96.AuthMediatorRegistrar(gh<_i63.Mediator>())..register());
  gh.singleton<_i97.ChangePersonalInfoCommandHandler>(
      _i97.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i8.EndUserRepository>()));
  gh.singleton<_i98.CommentPostCommandHandler>(_i98.CommentPostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i99.CommonMapsterRegistrar>(
      _i99.CommonMapsterRegistrar(gh<_i60.Mapster>())..register());
  gh.singleton<_i100.CreatePostCommandHandler>(_i100.CreatePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.factory<_i101.FeedController>(() => _i101.FeedController(
        mediator: gh<_i63.Mediator>(),
        mapster: gh<_i60.Mapster>(),
      ));
  gh.singleton<_i102.FeedMapsterRegistrar>(
      _i102.FeedMapsterRegistrar(gh<_i60.Mapster>())..register());
  gh.singleton<_i103.FeedMediatorRegistrar>(
      _i103.FeedMediatorRegistrar(gh<_i63.Mediator>())..register());
  gh.singleton<_i104.GetDevicesQueryHandler>(_i104.GetDevicesQueryHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i105.GetFeedQueryHandler>(_i105.GetFeedQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i106.GetFriendsQueryHandler>(_i106.GetFriendsQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i107.GetPostCommentQueryHandler>(
      _i107.GetPostCommentQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i108.GetPostCommentsQueryHandler>(
      _i108.GetPostCommentsQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i109.GetPostQueryHandler>(_i109.GetPostQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i110.GetRulesQueryHandler>(
      _i110.GetRulesQueryHandler(rulesRepository: gh<_i8.RulesRepository>()));
  gh.singleton<_i111.GetTagsQueryHandler>(
      _i111.GetTagsQueryHandler(tagRepository: gh<_i8.TagRepository>()));
  gh.singleton<_i112.GetUserByIDQueryHandler>(_i112.GetUserByIDQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i113.GetUserByNickQueryHandler>(_i113.GetUserByNickQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i114.LikePostCommandHandler>(_i114.LikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i115.LikePostCommentCommandHandler>(
      _i115.LikePostCommentCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i60.Mapster>(),
  ));
  gh.singleton<_i116.LogInQueryHandler>(_i116.LogInQueryHandler(
    jwtTokenService: gh<_i89.JwtTokenService>(),
    hashService: gh<_i20.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i70.DateTimeProvider>(),
  ));
  gh.singleton<_i117.LogOutCommandHandler>(_i117.LogOutCommandHandler(
    jwtTokenService: gh<_i89.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i118.RefreshTokenCommandHandler>(
      _i118.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i89.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    dateTimeProvider: gh<_i70.DateTimeProvider>(),
  ));
  gh.singleton<_i119.RegisterCommandHandler>(_i119.RegisterCommandHandler(
    jwtTokenService: gh<_i89.JwtTokenService>(),
    hashService: gh<_i120.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i120.DateTimeProvider>(),
  ));
  gh.singleton<_i121.RemoveDeviceCommandHandler>(
      _i121.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    hashService: gh<_i6.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i122.EnvModule {}

class _$MapsterModule extends _i123.MapsterModule {}

class _$MediatorModule extends _i124.MediatorModule {}
