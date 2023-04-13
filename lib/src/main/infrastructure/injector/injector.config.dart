// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i19;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i83;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i103;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i64;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i90;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i37;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i36;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i35;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i78;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i79;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i34;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i77;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i99;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i50;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i100;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i62;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i101;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i63;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i98;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i49;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i74;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i76;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i75;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i47;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i81;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i82;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i80;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i6;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i61;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i17;
import 'package:itrust_server/src/features/common/common.dart' as _i102;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i18;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i85;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i91;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i94;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i30;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i31;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i88;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i89;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i29;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i87;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i84;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i86;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i97;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i48;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i69;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i70;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i93;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i92;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i25;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i27;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i28;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i32;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i33;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i38;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i57;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i58;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i24;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i26;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i56;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i95;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i96;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i40;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i21;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i72;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i73;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i20;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i71;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i53;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i55;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i60;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i65;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i67;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i68;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i8;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i52;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i59;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i66;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i45;
import 'package:json_annotation/json_annotation.dart' as _i42;
import 'package:mapster/mapster.dart' as _i51;
import 'package:mediator/mediator.dart' as _i54;

import '../../../env/env_module.dart' as _i104;
import '../third_party/mapster_module.dart' as _i105;
import '../third_party/mediator_module.dart' as _i106;

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
  gh.singleton<_i12.GetPostCommentsQueryValidator>(
      _i12.GetPostCommentsQueryValidator());
  gh.singleton<_i13.GetPostQueryValidator>(_i13.GetPostQueryValidator());
  gh.singleton<_i14.GetTagsQueryValidator>(_i14.GetTagsQueryValidator());
  gh.singleton<_i15.GetUserByIDQueryValidator>(
      _i15.GetUserByIDQueryValidator());
  gh.singleton<_i16.GetUserByNickQueryValidator>(
      _i16.GetUserByNickQueryValidator());
  gh.singleton<_i17.HashService>(_i18.ProdHashService());
  gh.singleton<
          _i19.JsonConverter<_i20.GetUserByNickRequest, Map<String, Object?>>>(
      _i21.GetUserByNickRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i22.LogInRequest, Map<String, Object?>>>(
      _i23.LogInRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i24.CommentPostRequest, Map<String, Object?>>>(
      _i25.CommentPostRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i26.CreatePostRequest, Map<String, Object?>>>(
      _i27.CreatePostRequestJsonConverter());
  gh.singleton<
      _i19.JsonConverter<_i26.GetPostCommentsRequest,
          Map<String, Object?>>>(_i28.GetPostCommentsRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i29.GetFeedRequest, Map<String, Object?>>>(
      _i30.GetFeedRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i29.GetTagsRequest, Map<String, Object?>>>(
      _i31.GetTagsRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i26.GetPostRequest, Map<String, Object?>>>(
      _i32.GetPostRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i26.LikePostRequest, Map<String, Object?>>>(
      _i33.LikePostRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i34.RemoveDeviceRequest, Map<String, Object?>>>(
      _i35.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i34.GetDevicesRequest, Map<String, Object?>>>(
      _i36.GetDevicesRequestJsonConverter());
  gh.singleton<
      _i19.JsonConverter<_i34.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i37.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i26.UnlikePostRequest, Map<String, Object?>>>(
      _i38.UnlikePostRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i22.RefreshTokenRequest, Map<String, Object?>>>(
      _i39.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i20.GetUserByIDRequest, Map<String, Object?>>>(
      _i40.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i19.JsonConverter<_i22.VerifyTokenRequest, Map<String, Object?>>>(
      _i41.VerifyTokenRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i22.RegisterRequest, Map<String, Object?>>>(
      _i43.RegisterRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i22.LogOutRequest, Map<String, Object?>>>(
      _i44.LogOutRequestJsonConverter());
  gh.singleton<_i45.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i46.JwtTokenService>(
      _i47.ProdJwtTokenService(gh<_i45.JwtSettings>()));
  gh.singleton<_i48.LikePostCommandValidator>(_i48.LikePostCommandValidator());
  gh.singleton<_i49.LogInQueryValidator>(_i49.LogInQueryValidator());
  gh.singleton<_i50.LogOutCommandValidator>(_i50.LogOutCommandValidator());
  gh.singleton<_i51.Mapster>(mapsterModule.mapster);
  gh.singleton<_i52.MediaRepository>(
    _i53.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i54.Mediator>(mediatorModule.mediator);
  gh.singleton<_i8.PasswordHashRepository>(
    _i55.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i56.PostController>(() => _i56.PostController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.singleton<_i57.PostMapsterRegistrar>(
      _i57.PostMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i58.PostMediatorRegistrar>(
      _i58.PostMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i59.PostRepository>(
    _i60.DevPostRepository(
      dateTimeProvider: gh<_i61.DateTimeProvider>(),
      mediaRepository: gh<_i52.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i62.RefreshTokenCommandValidator>(
      _i62.RefreshTokenCommandValidator());
  gh.singleton<_i63.RegisterCommandValidator>(_i63.RegisterCommandValidator());
  gh.singleton<_i64.RemoveDeviceCommandValidator>(
      _i64.RemoveDeviceCommandValidator());
  gh.singleton<_i8.StaffUserRepository>(
    _i65.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i66.TagRepository>(
    _i67.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.TokenRepository>(
    _i68.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i69.UnlikePostCommandHandler>(_i69.UnlikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i70.UnlikePostCommandValidator>(
      _i70.UnlikePostCommandValidator());
  gh.factory<_i71.UserController>(() => _i71.UserController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.singleton<_i72.UserMapsterRegistrar>(
      _i72.UserMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i73.UserMediatorRegistrar>(
      _i73.UserMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i74.VerifyTokenQueryHandler>(_i74.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i75.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i76.VerifyTokenQueryValidator>(
      _i76.VerifyTokenQueryValidator());
  gh.factory<_i77.AccountController>(() => _i77.AccountController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.singleton<_i78.AccountMapsterRegistrar>(
      _i78.AccountMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i79.AccountMediatorRegistrar>(
      _i79.AccountMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.factory<_i80.AuthController>(() => _i80.AuthController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.singleton<_i81.AuthMapsterRegistrar>(
      _i81.AuthMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i82.AuthMediatorRegistrar>(
      _i82.AuthMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i83.ChangePersonalInfoCommandHandler>(
      _i83.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i8.EndUserRepository>()));
  gh.singleton<_i84.CommentPostCommandHandler>(_i84.CommentPostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i85.CommonMapsterRegistrar>(
      _i85.CommonMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i86.CreatePostCommandHandler>(_i86.CreatePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.factory<_i87.FeedController>(() => _i87.FeedController(
        mediator: gh<_i54.Mediator>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.singleton<_i88.FeedMapsterRegistrar>(
      _i88.FeedMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i89.FeedMediatorRegistrar>(
      _i89.FeedMediatorRegistrar(gh<_i54.Mediator>())..register());
  gh.singleton<_i90.GetDevicesQueryHandler>(_i90.GetDevicesQueryHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i91.GetFeedQueryHandler>(_i91.GetFeedQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i92.GetPostCommentsQueryHandler>(
      _i92.GetPostCommentsQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i93.GetPostQueryHandler>(_i93.GetPostQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i94.GetTagsQueryHandler>(
      _i94.GetTagsQueryHandler(tagRepository: gh<_i8.TagRepository>()));
  gh.singleton<_i95.GetUserByIDQueryHandler>(_i95.GetUserByIDQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i96.GetUserByNickQueryHandler>(_i96.GetUserByNickQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i97.LikePostCommandHandler>(_i97.LikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i98.LogInQueryHandler>(_i98.LogInQueryHandler(
    jwtTokenService: gh<_i75.JwtTokenService>(),
    hashService: gh<_i17.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i61.DateTimeProvider>(),
  ));
  gh.singleton<_i99.LogOutCommandHandler>(_i99.LogOutCommandHandler(
    jwtTokenService: gh<_i75.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i100.RefreshTokenCommandHandler>(
      _i100.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i75.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    dateTimeProvider: gh<_i61.DateTimeProvider>(),
  ));
  gh.singleton<_i101.RegisterCommandHandler>(_i101.RegisterCommandHandler(
    jwtTokenService: gh<_i75.JwtTokenService>(),
    hashService: gh<_i102.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i102.DateTimeProvider>(),
  ));
  gh.singleton<_i103.RemoveDeviceCommandHandler>(
      _i103.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    hashService: gh<_i6.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i104.EnvModule {}

class _$MapsterModule extends _i105.MapsterModule {}

class _$MediatorModule extends _i106.MediatorModule {}
