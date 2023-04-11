// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i63;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i77;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i48;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i68;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i9;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i29;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i32;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i22;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i58;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i59;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i21;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i73;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i37;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i74;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i75;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i47;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i72;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i36;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i54;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i56;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i35;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i26;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i30;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i61;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i62;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i60;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i5;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i45;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i13;
import 'package:itrust_server/src/features/common/common.dart' as _i76;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i14;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i6;
import 'package:itrust_server/src/features/feed/application/commands/create_post/create_post_command_handler.dart'
    as _i64;
import 'package:itrust_server/src/features/feed/application/commands/create_post/create_post_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i69;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i31;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i28;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i66;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i67;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i27;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i65;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i70;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i71;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i17;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i18;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i52;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i53;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i16;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i51;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i8;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i40;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i42;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i44;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i49;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i50;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i7;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i39;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i43;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i33;
import 'package:json_annotation/json_annotation.dart' as _i25;
import 'package:mapster/mapster.dart' as _i38;
import 'package:mediator/mediator.dart' as _i41;

import '../../../env/env_module.dart' as _i78;
import '../third_party/mapster_module.dart' as _i79;
import '../third_party/mediator_module.dart' as _i80;

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
  gh.singleton<_i11.GetUserByIDQueryValidator>(
      _i11.GetUserByIDQueryValidator());
  gh.singleton<_i12.GetUserByNickQueryValidator>(
      _i12.GetUserByNickQueryValidator());
  gh.singleton<_i13.HashService>(_i14.ProdHashService());
  gh.singleton<
          _i15.JsonConverter<_i16.GetUserByIDRequest, Map<String, Object?>>>(
      _i17.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i16.GetUserByNickRequest, Map<String, Object?>>>(
      _i18.GetUserByNickRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i19.RefreshTokenRequest, Map<String, Object?>>>(
      _i20.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i21.RemoveDeviceRequest, Map<String, Object?>>>(
      _i22.RemoveDeviceRequestJsonConverter());
  gh.singleton<_i15.JsonConverter<_i19.LogOutRequest, Map<String, Object?>>>(
      _i23.LogOutRequestJsonConverter());
  gh.singleton<_i15.JsonConverter<_i19.LogInRequest, Map<String, Object?>>>(
      _i24.LogInRequestJsonConverter());
  gh.singleton<_i25.JsonConverter<_i19.RegisterRequest, Map<String, Object?>>>(
      _i26.RegisterRequestJsonConverter());
  gh.singleton<_i15.JsonConverter<_i27.GetFeedRequest, Map<String, Object?>>>(
      _i28.GetFeedRequestJsonConverter());
  gh.singleton<
      _i15.JsonConverter<_i21.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i29.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i19.VerifyTokenRequest, Map<String, Object?>>>(
      _i30.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i27.CreatePostRequest, Map<String, Object?>>>(
      _i31.CreatePostRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i21.GetDevicesRequest, Map<String, Object?>>>(
      _i32.GetDevicesRequestJsonConverter());
  gh.singleton<_i33.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i34.JwtTokenService>(
      _i35.ProdJwtTokenService(gh<_i33.JwtSettings>()));
  gh.singleton<_i36.LogInQueryValidator>(_i36.LogInQueryValidator());
  gh.singleton<_i37.LogOutCommandValidator>(_i37.LogOutCommandValidator());
  gh.singleton<_i38.Mapster>(mapsterModule.mapster);
  gh.singleton<_i39.MediaRepository>(
    _i40.TestMediaRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i41.Mediator>(mediatorModule.mediator);
  gh.singleton<_i7.PasswordHashRepository>(
    _i42.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i43.PostRepository>(
    _i44.TestPostRepository(
      dateTimeProvider: gh<_i45.DateTimeProvider>(),
      mediaRepository: gh<_i39.MediaRepository>(),
    ),
    registerFor: {_test},
  );
  gh.singleton<_i46.RefreshTokenCommandValidator>(
      _i46.RefreshTokenCommandValidator());
  gh.singleton<_i47.RegisterCommandValidator>(_i47.RegisterCommandValidator());
  gh.singleton<_i48.RemoveDeviceCommandValidator>(
      _i48.RemoveDeviceCommandValidator());
  gh.singleton<_i7.StaffUserRepository>(
    _i49.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i7.TokenRepository>(
    _i50.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i51.UserController>(() => _i51.UserController(
        mediator: gh<_i41.Mediator>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i52.UserMapsterRegistrar>(
      _i52.UserMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i53.UserMediatorRegistrar>(
      _i53.UserMediatorRegistrar(gh<_i41.Mediator>())..register());
  gh.singleton<_i54.VerifyTokenQueryHandler>(_i54.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i55.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
  ));
  gh.singleton<_i56.VerifyTokenQueryValidator>(
      _i56.VerifyTokenQueryValidator());
  gh.factory<_i57.AccountController>(() => _i57.AccountController(
        mediator: gh<_i41.Mediator>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i58.AccountMapsterRegistrar>(
      _i58.AccountMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i59.AccountMediatorRegistrar>(
      _i59.AccountMediatorRegistrar(gh<_i41.Mediator>())..register());
  gh.factory<_i60.AuthController>(() => _i60.AuthController(
        mediator: gh<_i41.Mediator>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i61.AuthMapsterRegistrar>(
      _i61.AuthMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i62.AuthMediatorRegistrar>(
      _i62.AuthMediatorRegistrar(gh<_i41.Mediator>())..register());
  gh.singleton<_i63.ChangePersonalInfoCommandHandler>(
      _i63.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i7.EndUserRepository>()));
  gh.singleton<_i64.CreatePostCommandHandler>(_i64.CreatePostCommandHandler(
    postRepository: gh<_i7.PostRepository>(),
    mapster: gh<_i38.Mapster>(),
  ));
  gh.factory<_i65.FeedController>(() => _i65.FeedController(
        mediator: gh<_i41.Mediator>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i66.FeedMapsterRegistrar>(
      _i66.FeedMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i67.FeedMediatorRegistrar>(
      _i67.FeedMediatorRegistrar(gh<_i41.Mediator>())..register());
  gh.singleton<_i68.GetDevicesQueryHandler>(_i68.GetDevicesQueryHandler(
    tokenRepository: gh<_i7.TokenRepository>(),
    mapster: gh<_i38.Mapster>(),
  ));
  gh.singleton<_i69.GetFeedQueryHandler>(_i69.GetFeedQueryHandler(
    postRepository: gh<_i7.PostRepository>(),
    mapster: gh<_i38.Mapster>(),
  ));
  gh.singleton<_i70.GetUserByIDQueryHandler>(_i70.GetUserByIDQueryHandler(
    endUserRepository: gh<_i7.EndUserRepository>(),
    staffUserRepository: gh<_i7.StaffUserRepository>(),
  ));
  gh.singleton<_i71.GetUserByNickQueryHandler>(_i71.GetUserByNickQueryHandler(
    endUserRepository: gh<_i7.EndUserRepository>(),
    staffUserRepository: gh<_i7.StaffUserRepository>(),
  ));
  gh.singleton<_i72.LogInQueryHandler>(_i72.LogInQueryHandler(
    jwtTokenService: gh<_i55.JwtTokenService>(),
    hashService: gh<_i13.HashService>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    dateTimeProvider: gh<_i45.DateTimeProvider>(),
  ));
  gh.singleton<_i73.LogOutCommandHandler>(_i73.LogOutCommandHandler(
    jwtTokenService: gh<_i55.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
  ));
  gh.singleton<_i74.RefreshTokenCommandHandler>(_i74.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i55.JwtTokenService>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    dateTimeProvider: gh<_i45.DateTimeProvider>(),
  ));
  gh.singleton<_i75.RegisterCommandHandler>(_i75.RegisterCommandHandler(
    jwtTokenService: gh<_i55.JwtTokenService>(),
    hashService: gh<_i76.HashService>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    tokenRepository: gh<_i7.TokenRepository>(),
    dateTimeProvider: gh<_i76.DateTimeProvider>(),
  ));
  gh.singleton<_i77.RemoveDeviceCommandHandler>(_i77.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i7.TokenRepository>(),
    passwordHashRepository: gh<_i7.PasswordHashRepository>(),
    endUserRepository: gh<_i7.EndUserRepository>(),
    hashService: gh<_i5.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i78.EnvModule {}

class _$MapsterModule extends _i79.MapsterModule {}

class _$MediatorModule extends _i80.MediatorModule {}
