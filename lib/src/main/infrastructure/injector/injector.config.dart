// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i95;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i118;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i71;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i102;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i33;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i32;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i31;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i90;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i91;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i30;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i89;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i52;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i114;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i115;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i69;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i116;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i70;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i107;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i113;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i56;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i86;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i88;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i87;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i53;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i40;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i27;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i93;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i94;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i92;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i72;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i6;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i68;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i19;
import 'package:itrust_server/src/features/common/common.dart' as _i117;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i20;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i97;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i103;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i108;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i25;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i26;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i100;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i101;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i24;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i99;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i96;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i98;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i111;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i54;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i112;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i55;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i79;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i80;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i81;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i82;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i106;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i104;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i105;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i36;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i29;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i47;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i34;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i48;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i50;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i64;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i65;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i35;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i28;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i63;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i109;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i110;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i38;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i84;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i85;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i37;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i83;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i60;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i62;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i67;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i74;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i75;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i77;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i78;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i8;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i59;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i66;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i73;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i76;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i51;
import 'package:json_annotation/json_annotation.dart' as _i42;
import 'package:mapster/mapster.dart' as _i58;
import 'package:mediator/mediator.dart' as _i61;

import '../../../env/env_module.dart' as _i119;
import '../third_party/mapster_module.dart' as _i120;
import '../third_party/mediator_module.dart' as _i121;

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
  gh.singleton<_i12.GetPostCommentQueryValidator>(
      _i12.GetPostCommentQueryValidator());
  gh.singleton<_i13.GetPostCommentsQueryValidator>(
      _i13.GetPostCommentsQueryValidator());
  gh.singleton<_i14.GetPostQueryValidator>(_i14.GetPostQueryValidator());
  gh.singleton<_i15.GetRulesQueryValidator>(_i15.GetRulesQueryValidator());
  gh.singleton<_i16.GetTagsQueryValidator>(_i16.GetTagsQueryValidator());
  gh.singleton<_i17.GetUserByIDQueryValidator>(
      _i17.GetUserByIDQueryValidator());
  gh.singleton<_i18.GetUserByNickQueryValidator>(
      _i18.GetUserByNickQueryValidator());
  gh.singleton<_i19.HashService>(_i20.ProdHashService());
  gh.singleton<_i21.JsonConverter<_i22.LogInRequest, Map<String, Object?>>>(
      _i23.LogInRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.GetFeedRequest, Map<String, Object?>>>(
      _i25.GetFeedRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i24.GetTagsRequest, Map<String, Object?>>>(
      _i26.GetTagsRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.LogOutRequest, Map<String, Object?>>>(
      _i27.LogOutRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i28.GetPostCommentRequest, Map<String, Object?>>>(
      _i29.GetPostCommentRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i30.RemoveDeviceRequest, Map<String, Object?>>>(
      _i31.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i30.GetDevicesRequest, Map<String, Object?>>>(
      _i32.GetDevicesRequestJsonConverter());
  gh.singleton<
      _i21.JsonConverter<_i30.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i33.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
      _i21.JsonConverter<_i28.LikePostCommentRequest,
          Map<String, Object?>>>(_i34.LikePostCommentRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i35.CommentPostRequest, Map<String, Object?>>>(
      _i36.CommentPostRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i37.GetUserByIDRequest, Map<String, Object?>>>(
      _i38.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i37.GetUserByNickRequest, Map<String, Object?>>>(
      _i39.GetUserByNickRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i22.GetRulesRequest, Map<String, Object?>>>(
      _i40.GetRulesRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.VerifyTokenRequest, Map<String, Object?>>>(
      _i41.VerifyTokenRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i22.RegisterRequest, Map<String, Object?>>>(
      _i43.RegisterRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i22.RefreshTokenRequest, Map<String, Object?>>>(
      _i44.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i28.CreatePostRequest, Map<String, Object?>>>(
      _i45.CreatePostRequestJsonConverter());
  gh.singleton<
      _i21.JsonConverter<_i28.GetPostCommentsRequest,
          Map<String, Object?>>>(_i46.GetPostCommentsRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i28.GetPostRequest, Map<String, Object?>>>(
      _i47.GetPostRequestJsonConverter());
  gh.singleton<_i21.JsonConverter<_i28.LikePostRequest, Map<String, Object?>>>(
      _i48.LikePostRequestJsonConverter());
  gh.singleton<
          _i21.JsonConverter<_i28.UnlikePostRequest, Map<String, Object?>>>(
      _i49.UnlikePostRequestJsonConverter());
  gh.singleton<
      _i21.JsonConverter<_i28.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i50.UnlikePostCommentRequestJsonConverter());
  gh.singleton<_i51.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i52.JwtTokenService>(
      _i53.ProdJwtTokenService(gh<_i51.JwtSettings>()));
  gh.singleton<_i54.LikePostCommandValidator>(_i54.LikePostCommandValidator());
  gh.singleton<_i55.LikePostCommentCommandValidator>(
      _i55.LikePostCommentCommandValidator());
  gh.singleton<_i56.LogInQueryValidator>(_i56.LogInQueryValidator());
  gh.singleton<_i57.LogOutCommandValidator>(_i57.LogOutCommandValidator());
  gh.singleton<_i58.Mapster>(mapsterModule.mapster);
  gh.singleton<_i59.MediaRepository>(
    _i60.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i61.Mediator>(mediatorModule.mediator);
  gh.singleton<_i8.PasswordHashRepository>(
    _i62.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i63.PostController>(() => _i63.PostController(
        mediator: gh<_i61.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i64.PostMapsterRegistrar>(
      _i64.PostMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i65.PostMediatorRegistrar>(
      _i65.PostMediatorRegistrar(gh<_i61.Mediator>())..register());
  gh.singleton<_i66.PostRepository>(
    _i67.DevPostRepository(
      dateTimeProvider: gh<_i68.DateTimeProvider>(),
      mediaRepository: gh<_i59.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i69.RefreshTokenCommandValidator>(
      _i69.RefreshTokenCommandValidator());
  gh.singleton<_i70.RegisterCommandValidator>(_i70.RegisterCommandValidator());
  gh.singleton<_i71.RemoveDeviceCommandValidator>(
      _i71.RemoveDeviceCommandValidator());
  gh.factory<_i72.RulesController>(() => _i72.RulesController(
        mediator: gh<_i61.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i73.RulesRepository>(
    _i74.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.StaffUserRepository>(
    _i75.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i76.TagRepository>(
    _i77.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.TokenRepository>(
    _i78.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i79.UnlikePostCommandHandler>(_i79.UnlikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i80.UnlikePostCommandValidator>(
      _i80.UnlikePostCommandValidator());
  gh.singleton<_i81.UnlikePostCommentCommandHandler>(
      _i81.UnlikePostCommentCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i82.UnlikePostCommentCommandValidator>(
      _i82.UnlikePostCommentCommandValidator());
  gh.factory<_i83.UserController>(() => _i83.UserController(
        mediator: gh<_i61.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i84.UserMapsterRegistrar>(
      _i84.UserMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i85.UserMediatorRegistrar>(
      _i85.UserMediatorRegistrar(gh<_i61.Mediator>())..register());
  gh.singleton<_i86.VerifyTokenQueryHandler>(_i86.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i87.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i88.VerifyTokenQueryValidator>(
      _i88.VerifyTokenQueryValidator());
  gh.factory<_i89.AccountController>(() => _i89.AccountController(
        mediator: gh<_i61.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i90.AccountMapsterRegistrar>(
      _i90.AccountMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i91.AccountMediatorRegistrar>(
      _i91.AccountMediatorRegistrar(gh<_i61.Mediator>())..register());
  gh.factory<_i92.AuthController>(() => _i92.AuthController(
        mediator: gh<_i61.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i93.AuthMapsterRegistrar>(
      _i93.AuthMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i94.AuthMediatorRegistrar>(
      _i94.AuthMediatorRegistrar(gh<_i61.Mediator>())..register());
  gh.singleton<_i95.ChangePersonalInfoCommandHandler>(
      _i95.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i8.EndUserRepository>()));
  gh.singleton<_i96.CommentPostCommandHandler>(_i96.CommentPostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i97.CommonMapsterRegistrar>(
      _i97.CommonMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i98.CreatePostCommandHandler>(_i98.CreatePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.factory<_i99.FeedController>(() => _i99.FeedController(
        mediator: gh<_i61.Mediator>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i100.FeedMapsterRegistrar>(
      _i100.FeedMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i101.FeedMediatorRegistrar>(
      _i101.FeedMediatorRegistrar(gh<_i61.Mediator>())..register());
  gh.singleton<_i102.GetDevicesQueryHandler>(_i102.GetDevicesQueryHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i103.GetFeedQueryHandler>(_i103.GetFeedQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i104.GetPostCommentQueryHandler>(
      _i104.GetPostCommentQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i105.GetPostCommentsQueryHandler>(
      _i105.GetPostCommentsQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i106.GetPostQueryHandler>(_i106.GetPostQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i107.GetRulesQueryHandler>(
      _i107.GetRulesQueryHandler(rulesRepository: gh<_i8.RulesRepository>()));
  gh.singleton<_i108.GetTagsQueryHandler>(
      _i108.GetTagsQueryHandler(tagRepository: gh<_i8.TagRepository>()));
  gh.singleton<_i109.GetUserByIDQueryHandler>(_i109.GetUserByIDQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i110.GetUserByNickQueryHandler>(_i110.GetUserByNickQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i111.LikePostCommandHandler>(_i111.LikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i112.LikePostCommentCommandHandler>(
      _i112.LikePostCommentCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i113.LogInQueryHandler>(_i113.LogInQueryHandler(
    jwtTokenService: gh<_i87.JwtTokenService>(),
    hashService: gh<_i19.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i68.DateTimeProvider>(),
  ));
  gh.singleton<_i114.LogOutCommandHandler>(_i114.LogOutCommandHandler(
    jwtTokenService: gh<_i87.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i115.RefreshTokenCommandHandler>(
      _i115.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i87.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    dateTimeProvider: gh<_i68.DateTimeProvider>(),
  ));
  gh.singleton<_i116.RegisterCommandHandler>(_i116.RegisterCommandHandler(
    jwtTokenService: gh<_i87.JwtTokenService>(),
    hashService: gh<_i117.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i117.DateTimeProvider>(),
  ));
  gh.singleton<_i118.RemoveDeviceCommandHandler>(
      _i118.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    hashService: gh<_i6.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i119.EnvModule {}

class _$MapsterModule extends _i120.MapsterModule {}

class _$MediatorModule extends _i121.MediatorModule {}
