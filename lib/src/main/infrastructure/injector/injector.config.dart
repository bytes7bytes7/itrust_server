// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i54;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i55;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i28;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i18;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i49;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i50;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i17;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i48;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i59;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i60;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i61;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i58;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i33;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i45;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i47;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i32;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i52;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i53;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i51;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i4;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i10;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i56;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i57;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i27;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i26;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i43;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i44;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i25;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i42;
import 'package:itrust_server/src/repositories/implementations/date_time_repository.dart'
    as _i7;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i37;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i40;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i41;
import 'package:itrust_server/src/repositories/interfaces/date_time_repository.dart'
    as _i6;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i8;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i30;
import 'package:json_annotation/json_annotation.dart' as _i19;
import 'package:mapster/mapster.dart' as _i35;
import 'package:mediator/mediator.dart' as _i36;

import '../../../env/env_module.dart' as _i62;
import '../third_party/mapster_module.dart' as _i63;
import '../third_party/mediator_module.dart' as _i64;

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
  gh.singleton<_i4.DateTimeProvider>(_i5.ProdDateTimeProvider());
  gh.singleton<_i6.DateTimeRepository>(_i7.ProdDateTimeRepository());
  gh.singleton<_i8.EndUserRepository>(
    _i9.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.factory<_i10.FeedController>(() => _i10.FeedController());
  gh.singleton<_i11.GetDevicesQueryValidator>(_i11.GetDevicesQueryValidator());
  gh.singleton<_i12.GetUserByIDQueryValidator>(
      _i12.GetUserByIDQueryValidator());
  gh.singleton<_i13.GetUserByNickQueryValidator>(
      _i13.GetUserByNickQueryValidator());
  gh.singleton<_i14.HashService>(_i15.ProdHashService());
  gh.singleton<
          _i16.JsonConverter<_i17.GetDevicesRequest, Map<String, Object?>>>(
      _i18.GetDevicesRequestJsonConverter());
  gh.singleton<_i19.JsonConverter<_i20.RegisterRequest, Map<String, Object?>>>(
      _i21.RegisterRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i20.LogInRequest, Map<String, Object?>>>(
      _i22.LogInRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i20.LogOutRequest, Map<String, Object?>>>(
      _i23.LogOutRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i20.VerifyTokenRequest, Map<String, Object?>>>(
      _i24.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i25.GetUserByNickRequest, Map<String, Object?>>>(
      _i26.GetUserByNickRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i25.GetUserByIDRequest, Map<String, Object?>>>(
      _i27.GetUserByIDRequestJsonConverter());
  gh.singleton<
      _i16.JsonConverter<_i17.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i28.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i20.RefreshTokenRequest, Map<String, Object?>>>(
      _i29.RefreshTokenRequestJsonConverter());
  gh.singleton<_i30.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i31.JwtTokenService>(
      _i32.ProdJwtTokenService(gh<_i30.JwtSettings>()));
  gh.singleton<_i33.LogInQueryValidator>(_i33.LogInQueryValidator());
  gh.singleton<_i34.LogOutCommandValidator>(_i34.LogOutCommandValidator());
  gh.singleton<_i35.Mapster>(mapsterModule.mapster);
  gh.singleton<_i36.Mediator>(mediatorModule.mediator);
  gh.singleton<_i8.PasswordHashRepository>(
    _i37.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i38.RefreshTokenCommandValidator>(
      _i38.RefreshTokenCommandValidator());
  gh.singleton<_i39.RegisterCommandValidator>(_i39.RegisterCommandValidator());
  gh.singleton<_i8.StaffUserRepository>(
    _i40.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i8.TokenRepository>(
    _i41.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i42.UserController>(() => _i42.UserController(
        mediator: gh<_i36.Mediator>(),
        mapster: gh<_i35.Mapster>(),
      ));
  gh.singleton<_i43.UserMapsterRegistrar>(
      _i43.UserMapsterRegistrar(gh<_i35.Mapster>())..register());
  gh.singleton<_i44.UserMediatorRegistrar>(
      _i44.UserMediatorRegistrar(gh<_i36.Mediator>())..register());
  gh.singleton<_i45.VerifyTokenQueryHandler>(_i45.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i46.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i47.VerifyTokenQueryValidator>(
      _i47.VerifyTokenQueryValidator());
  gh.factory<_i48.AccountController>(() => _i48.AccountController(
        mediator: gh<_i36.Mediator>(),
        mapster: gh<_i35.Mapster>(),
      ));
  gh.singleton<_i49.AccountMapsterRegistrar>(
      _i49.AccountMapsterRegistrar(gh<_i35.Mapster>())..register());
  gh.singleton<_i50.AccountMediatorRegistrar>(
      _i50.AccountMediatorRegistrar(gh<_i36.Mediator>())..register());
  gh.factory<_i51.AuthController>(() => _i51.AuthController(
        mediator: gh<_i36.Mediator>(),
        mapster: gh<_i35.Mapster>(),
      ));
  gh.singleton<_i52.AuthMapsterRegistrar>(
      _i52.AuthMapsterRegistrar(gh<_i35.Mapster>())..register());
  gh.singleton<_i53.AuthMediatorRegistrar>(
      _i53.AuthMediatorRegistrar(gh<_i36.Mediator>())..register());
  gh.singleton<_i54.ChangePersonalInfoCommandHandler>(
      _i54.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i8.EndUserRepository>()));
  gh.singleton<_i55.GetDevicesQueryHandler>(
      _i55.GetDevicesQueryHandler(tokenRepository: gh<_i8.TokenRepository>()));
  gh.singleton<_i56.GetUserByIDQueryHandler>(_i56.GetUserByIDQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i57.GetUserByNickQueryHandler>(_i57.GetUserByNickQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i58.LogInQueryHandler>(_i58.LogInQueryHandler(
    jwtTokenService: gh<_i46.JwtTokenService>(),
    hashService: gh<_i14.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeRepository: gh<_i8.DateTimeRepository>(),
  ));
  gh.singleton<_i59.LogOutCommandHandler>(_i59.LogOutCommandHandler(
    jwtTokenService: gh<_i46.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i60.RefreshTokenCommandHandler>(_i60.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i46.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    dateTimeRepository: gh<_i8.DateTimeRepository>(),
  ));
  gh.singleton<_i61.RegisterCommandHandler>(_i61.RegisterCommandHandler(
    jwtTokenService: gh<_i46.JwtTokenService>(),
    hashService: gh<_i14.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeRepository: gh<_i8.DateTimeRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i62.EnvModule {}

class _$MapsterModule extends _i63.MapsterModule {}

class _$MediatorModule extends _i64.MediatorModule {}
