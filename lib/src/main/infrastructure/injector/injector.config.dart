// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i17;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i78;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i96;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i59;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i84;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i9;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i24;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i37;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i36;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i73;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i74;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i23;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i72;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i92;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i45;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i93;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i94;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i58;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i91;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i44;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i69;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i71;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i70;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i42;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i32;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i28;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i76;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i77;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i27;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i75;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i5;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i56;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i15;
import 'package:itrust_server/src/features/common/common.dart' as _i95;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i16;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i6;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i79;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i85;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i87;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i21;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i25;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i82;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i83;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i20;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i81;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i80;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i90;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i43;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i64;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i65;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i86;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i19;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i26;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i38;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i22;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i52;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i53;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i18;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i51;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i88;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i89;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i35;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i30;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i67;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i68;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i29;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i66;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i8;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i48;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i50;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i55;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i60;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i62;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i63;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i7;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i47;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i54;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i61;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i40;
import 'package:json_annotation/json_annotation.dart' as _i33;
import 'package:mapster/mapster.dart' as _i46;
import 'package:mediator/mediator.dart' as _i49;

import '../../../env/env_module.dart' as _i97;
import '../third_party/mapster_module.dart' as _i98;
import '../third_party/mediator_module.dart' as _i99;

const String _test = 'test';

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
  gh.singleton<_i4.CreatePostCommandValidator>(
      _i4.CreatePostCommandValidator());
  gh.singleton<_i5.DateTimeProvider>(_i6.ProdDateTimeProvider());
  gh.singleton<_i7.EndUserRepository>(
    _i8.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i9.GetDevicesQueryValidator>(_i9.GetDevicesQueryValidator());
  gh.singleton<_i10.GetFeedQueryValidator>(_i10.GetFeedQueryValidator());
  gh.singleton<_i11.GetPostQueryValidator>(_i11.GetPostQueryValidator());
  gh.singleton<_i12.GetTagsQueryValidator>(_i12.GetTagsQueryValidator());
  gh.singleton<_i13.GetUserByIDQueryValidator>(
      _i13.GetUserByIDQueryValidator());
  gh.singleton<_i14.GetUserByNickQueryValidator>(
      _i14.GetUserByNickQueryValidator());
  gh.singleton<_i15.HashService>(_i16.ProdHashService());
  gh.singleton<
          _i17.JsonConverter<_i18.CreatePostRequest, Map<String, Object?>>>(
      _i19.CreatePostRequestJsonConverter());
  gh.singleton<_i17.JsonConverter<_i20.GetFeedRequest, Map<String, Object?>>>(
      _i21.GetFeedRequestJsonConverter());
  gh.singleton<
          _i17.JsonConverter<_i18.UnlikePostRequest, Map<String, Object?>>>(
      _i22.UnlikePostRequestJsonConverter());
  gh.singleton<
      _i17.JsonConverter<_i23.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i24.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i17.JsonConverter<_i20.GetTagsRequest, Map<String, Object?>>>(
      _i25.GetTagsRequestJsonConverter());
  gh.singleton<_i17.JsonConverter<_i18.GetPostRequest, Map<String, Object?>>>(
      _i26.GetPostRequestJsonConverter());
  gh.singleton<
          _i17.JsonConverter<_i27.RefreshTokenRequest, Map<String, Object?>>>(
      _i28.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i17.JsonConverter<_i29.GetUserByNickRequest, Map<String, Object?>>>(
      _i30.GetUserByNickRequestJsonConverter());
  gh.singleton<
          _i17.JsonConverter<_i27.VerifyTokenRequest, Map<String, Object?>>>(
      _i31.VerifyTokenRequestJsonConverter());
  gh.singleton<_i17.JsonConverter<_i27.LogOutRequest, Map<String, Object?>>>(
      _i32.LogOutRequestJsonConverter());
  gh.singleton<_i33.JsonConverter<_i27.RegisterRequest, Map<String, Object?>>>(
      _i34.RegisterRequestJsonConverter());
  gh.singleton<
          _i17.JsonConverter<_i29.GetUserByIDRequest, Map<String, Object?>>>(
      _i35.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i17.JsonConverter<_i23.RemoveDeviceRequest, Map<String, Object?>>>(
      _i36.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i17.JsonConverter<_i23.GetDevicesRequest, Map<String, Object?>>>(
      _i37.GetDevicesRequestJsonConverter());
  gh.singleton<_i17.JsonConverter<_i18.LikePostRequest, Map<String, Object?>>>(
      _i38.LikePostRequestJsonConverter());
  gh.singleton<_i17.JsonConverter<_i27.LogInRequest, Map<String, Object?>>>(
      _i39.LogInRequestJsonConverter());
  gh.singleton<_i40.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i41.JwtTokenService>(
      _i42.ProdJwtTokenService(gh<_i40.JwtSettings>()));
  gh.singleton<_i43.LikePostCommandValidator>(_i43.LikePostCommandValidator());
  gh.singleton<_i44.LogInQueryValidator>(_i44.LogInQueryValidator());
  gh.singleton<_i45.LogOutCommandValidator>(_i45.LogOutCommandValidator());
  gh.singleton<_i46.Mapster>(mapsterModule.mapster);
  gh.singleton<_i47.MediaRepository>(
    _i48.TestMediaRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i49.Mediator>(mediatorModule.mediator);
  gh.singleton<_i7.PasswordHashRepository>(
    _i50.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.factory<_i51.PostController>(() => _i51.PostController(
        mediator: gh<_i49.Mediator>(),
        mapster: gh<_i46.Mapster>(),
      ));
  gh.singleton<_i52.PostMapsterRegistrar>(
      _i52.PostMapsterRegistrar(gh<_i46.Mapster>())..register());
  gh.singleton<_i53.PostMediatorRegistrar>(
      _i53.PostMediatorRegistrar(gh<_i49.Mediator>())..register());
  gh.singleton<_i54.PostRepository>(
    _i55.TestPostRepository(
      dateTimeProvider: gh<_i56.DateTimeProvider>(),
      mediaRepository: gh<_i47.MediaRepository>(),
    ),
    registerFor: {_test},
  );
  gh.singleton<_i57.RefreshTokenCommandValidator>(
      _i57.RefreshTokenCommandValidator());
  gh.singleton<_i58.RegisterCommandValidator>(_i58.RegisterCommandValidator());
  gh.singleton<_i59.RemoveDeviceCommandValidator>(
      _i59.RemoveDeviceCommandValidator());
  gh.singleton<_i7.StaffUserRepository>(
    _i60.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i61.TagRepository>(
    _i62.TestTagRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i7.TokenRepository>(
    _i63.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i64.UnlikePostCommandHandler>(_i64.UnlikePostCommandHandler(
    postRepository: gh<_i7.PostRepository>(),
    mediaRepository: gh<_i7.MediaRepository>(),
    mapster: gh<_i46.Mapster>(),
  ));
  gh.singleton<_i65.UnlikePostCommandValidator>(
      _i65.UnlikePostCommandValidator());
  gh.factory<_i66.UserController>(() => _i66.UserController(
        mediator: gh<_i49.Mediator>(),
        mapster: gh<_i46.Mapster>(),
      ));
  gh.singleton<_i67.UserMapsterRegistrar>(
      _i67.UserMapsterRegistrar(gh<_i46.Mapster>())..register());
  gh.singleton<_i68.UserMediatorRegistrar>(
      _i68.UserMediatorRegistrar(gh<_i49.Mediator>())..register());
  gh.singleton<_i69.VerifyTokenQueryHandler>(_i69.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
  ));
  gh.singleton<_i71.VerifyTokenQueryValidator>(
      _i71.VerifyTokenQueryValidator());
  gh.factory<_i72.AccountController>(() => _i72.AccountController(
        mediator: gh<_i49.Mediator>(),
        mapster: gh<_i46.Mapster>(),
      ));
  gh.singleton<_i73.AccountMapsterRegistrar>(
      _i73.AccountMapsterRegistrar(gh<_i46.Mapster>())..register());
  gh.singleton<_i74.AccountMediatorRegistrar>(
      _i74.AccountMediatorRegistrar(gh<_i49.Mediator>())..register());
  gh.factory<_i75.AuthController>(() => _i75.AuthController(
        mediator: gh<_i49.Mediator>(),
        mapster: gh<_i46.Mapster>(),
      ));
  gh.singleton<_i76.AuthMapsterRegistrar>(
      _i76.AuthMapsterRegistrar(gh<_i46.Mapster>())..register());
  gh.singleton<_i77.AuthMediatorRegistrar>(
      _i77.AuthMediatorRegistrar(gh<_i49.Mediator>())..register());
  gh.singleton<_i78.ChangePersonalInfoCommandHandler>(
      _i78.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i7.EndUserRepository>()));
  gh.singleton<_i79.CommonMapsterRegistrar>(
      _i79.CommonMapsterRegistrar(gh<_i46.Mapster>())..register());
  gh.singleton<_i80.CreatePostCommandHandler>(_i80.CreatePostCommandHandler(
    postRepository: gh<_i7.PostRepository>(),
    mediaRepository: gh<_i7.MediaRepository>(),
    mapster: gh<_i46.Mapster>(),
  ));
  gh.factory<_i81.FeedController>(() => _i81.FeedController(
        mediator: gh<_i49.Mediator>(),
        mapster: gh<_i46.Mapster>(),
      ));
  gh.singleton<_i82.FeedMapsterRegistrar>(
      _i82.FeedMapsterRegistrar(gh<_i46.Mapster>())..register());
  gh.singleton<_i83.FeedMediatorRegistrar>(
      _i83.FeedMediatorRegistrar(gh<_i49.Mediator>())..register());
  gh.singleton<_i84.GetDevicesQueryHandler>(_i84.GetDevicesQueryHandler(
    tokenRepository: gh<_i7.TokenRepository>(),
    mapster: gh<_i46.Mapster>(),
  ));
  gh.singleton<_i85.GetFeedQueryHandler>(_i85.GetFeedQueryHandler(
    postRepository: gh<_i7.PostRepository>(),
    mediaRepository: gh<_i7.MediaRepository>(),
    mapster: gh<_i46.Mapster>(),
  ));
  gh.singleton<_i86.GetPostQueryHandler>(_i86.GetPostQueryHandler(
    postRepository: gh<_i7.PostRepository>(),
    mediaRepository: gh<_i7.MediaRepository>(),
    mapster: gh<_i46.Mapster>(),
  ));
  gh.singleton<_i87.GetTagsQueryHandler>(
      _i87.GetTagsQueryHandler(tagRepository: gh<_i7.TagRepository>()));
  gh.singleton<_i88.GetUserByIDQueryHandler>(_i88.GetUserByIDQueryHandler(
    endUserRepository: gh<_i7.EndUserRepository>(),
    staffUserRepository: gh<_i7.StaffUserRepository>(),
  ));
  gh.singleton<_i89.GetUserByNickQueryHandler>(_i89.GetUserByNickQueryHandler(
    endUserRepository: gh<_i7.EndUserRepository>(),
    staffUserRepository: gh<_i7.StaffUserRepository>(),
  ));
  gh.singleton<_i90.LikePostCommandHandler>(_i90.LikePostCommandHandler(
    postRepository: gh<_i7.PostRepository>(),
    mediaRepository: gh<_i7.MediaRepository>(),
    mapster: gh<_i46.Mapster>(),
  ));
  gh.singleton<_i91.LogInQueryHandler>(_i91.LogInQueryHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    hashService: gh<_i15.HashService>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    dateTimeProvider: gh<_i56.DateTimeProvider>(),
  ));
  gh.singleton<_i92.LogOutCommandHandler>(_i92.LogOutCommandHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
  ));
  gh.singleton<_i93.RefreshTokenCommandHandler>(_i93.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    dateTimeProvider: gh<_i56.DateTimeProvider>(),
  ));
  gh.singleton<_i94.RegisterCommandHandler>(_i94.RegisterCommandHandler(
    jwtTokenService: gh<_i70.JwtTokenService>(),
    hashService: gh<_i95.HashService>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    dateTimeProvider: gh<_i95.DateTimeProvider>(),
  ));
  gh.singleton<_i96.RemoveDeviceCommandHandler>(_i96.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i7.TokenRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    hashService: gh<_i5.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i97.EnvModule {}

class _$MapsterModule extends _i98.MapsterModule {}

class _$MediatorModule extends _i99.MediatorModule {}
