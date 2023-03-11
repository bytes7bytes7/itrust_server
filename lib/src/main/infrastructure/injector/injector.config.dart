// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i50;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i9;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i17;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i25;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i45;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i46;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i16;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i44;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i27;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i54;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i56;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i35;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i53;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i43;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i42;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i28;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i48;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i49;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i47;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i4;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i8;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i51;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i52;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i39;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i40;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i38;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i7;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i33;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i36;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i37;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i6;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i26;
import 'package:json_annotation/json_annotation.dart' as _i18;
import 'package:mapster/mapster.dart' as _i31;
import 'package:mediator/mediator.dart' as _i32;

import '../../../env/env_module.dart' as _i57;
import '../third_party/mapster_module.dart' as _i58;
import '../third_party/mediator_module.dart' as _i59;

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
  gh.singleton<_i6.EndUserRepository>(
    _i7.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.factory<_i8.FeedController>(() => _i8.FeedController());
  gh.singleton<_i9.GetDevicesQueryHandler>(_i9.GetDevicesQueryHandler());
  gh.singleton<_i10.GetDevicesQueryValidator>(_i10.GetDevicesQueryValidator());
  gh.singleton<_i11.GetUserByIDQueryValidator>(
      _i11.GetUserByIDQueryValidator());
  gh.singleton<_i12.GetUserByNickQueryValidator>(
      _i12.GetUserByNickQueryValidator());
  gh.singleton<_i13.HashService>(_i14.ProdHashService());
  gh.singleton<
      _i15.JsonConverter<_i16.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i17.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i18.JsonConverter<_i19.RegisterRequest, Map<String, Object?>>>(
      _i20.RegisterRequestJsonConverter());
  gh.singleton<_i15.JsonConverter<_i19.LogInRequest, Map<String, Object?>>>(
      _i21.LogInRequestJsonConverter());
  gh.singleton<_i15.JsonConverter<_i19.LogOutRequest, Map<String, Object?>>>(
      _i22.LogOutRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i19.VerifyTokenRequest, Map<String, Object?>>>(
      _i23.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i19.RefreshTokenRequest, Map<String, Object?>>>(
      _i24.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i15.JsonConverter<_i16.GetDevicesRequest, Map<String, Object?>>>(
      _i25.GetDevicesRequestJsonConverter());
  gh.singleton<_i26.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i27.JwtTokenService>(
      _i28.ProdJwtTokenService(gh<_i26.JwtSettings>()));
  gh.singleton<_i29.LogInQueryValidator>(_i29.LogInQueryValidator());
  gh.singleton<_i30.LogOutCommandValidator>(_i30.LogOutCommandValidator());
  gh.singleton<_i31.Mapster>(mapsterModule.mapster);
  gh.singleton<_i32.Mediator>(mediatorModule.mediator);
  gh.singleton<_i6.PasswordHashRepository>(
    _i33.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i34.RefreshTokenCommandValidator>(
      _i34.RefreshTokenCommandValidator());
  gh.singleton<_i35.RegisterCommandValidator>(_i35.RegisterCommandValidator());
  gh.singleton<_i6.StaffUserRepository>(
    _i36.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i6.TokenRepository>(
    _i37.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i38.UserController>(() => _i38.UserController(
        mediator: gh<_i32.Mediator>(),
        mapster: gh<_i31.Mapster>(),
      ));
  gh.singleton<_i39.UserMapsterRegistrar>(
      _i39.UserMapsterRegistrar(gh<_i31.Mapster>())..register());
  gh.singleton<_i40.UserMediatorRegistrar>(
      _i40.UserMediatorRegistrar(gh<_i32.Mediator>())..register());
  gh.singleton<_i41.VerifyTokenQueryHandler>(_i41.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i42.JwtTokenService>(),
    tokenRepository: gh<_i6.TokenRepository>(),
  ));
  gh.singleton<_i43.VerifyTokenQueryValidator>(
      _i43.VerifyTokenQueryValidator());
  gh.factory<_i44.AccountController>(() => _i44.AccountController(
        mediator: gh<_i32.Mediator>(),
        mapster: gh<_i31.Mapster>(),
      ));
  gh.singleton<_i45.AccountMapsterRegistrar>(
      _i45.AccountMapsterRegistrar(gh<_i31.Mapster>())..register());
  gh.singleton<_i46.AccountMediatorRegistrar>(
      _i46.AccountMediatorRegistrar(gh<_i32.Mediator>())..register());
  gh.factory<_i47.AuthController>(() => _i47.AuthController(
        mediator: gh<_i32.Mediator>(),
        mapster: gh<_i31.Mapster>(),
      ));
  gh.singleton<_i48.AuthMapsterRegistrar>(
      _i48.AuthMapsterRegistrar(gh<_i31.Mapster>())..register());
  gh.singleton<_i49.AuthMediatorRegistrar>(
      _i49.AuthMediatorRegistrar(gh<_i32.Mediator>())..register());
  gh.singleton<_i50.ChangePersonalInfoCommandHandler>(
      _i50.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i6.EndUserRepository>()));
  gh.singleton<_i51.GetUserByIDQueryHandler>(_i51.GetUserByIDQueryHandler(
    endUserRepository: gh<_i6.EndUserRepository>(),
    staffUserRepository: gh<_i6.StaffUserRepository>(),
  ));
  gh.singleton<_i52.GetUserByNickQueryHandler>(_i52.GetUserByNickQueryHandler(
    endUserRepository: gh<_i6.EndUserRepository>(),
    staffUserRepository: gh<_i6.StaffUserRepository>(),
  ));
  gh.singleton<_i53.LogInQueryHandler>(_i53.LogInQueryHandler(
    jwtTokenService: gh<_i42.JwtTokenService>(),
    hashService: gh<_i13.HashService>(),
    endUserRepository: gh<_i6.EndUserRepository>(),
    passwordHashRepository: gh<_i6.PasswordHashRepository>(),
    tokenRepository: gh<_i6.TokenRepository>(),
  ));
  gh.singleton<_i54.LogOutCommandHandler>(_i54.LogOutCommandHandler(
    jwtTokenService: gh<_i42.JwtTokenService>(),
    tokenRepository: gh<_i6.TokenRepository>(),
  ));
  gh.singleton<_i55.RefreshTokenCommandHandler>(_i55.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i42.JwtTokenService>(),
    tokenRepository: gh<_i6.TokenRepository>(),
    endUserRepository: gh<_i6.EndUserRepository>(),
  ));
  gh.singleton<_i56.RegisterCommandHandler>(_i56.RegisterCommandHandler(
    jwtTokenService: gh<_i42.JwtTokenService>(),
    hashService: gh<_i13.HashService>(),
    endUserRepository: gh<_i6.EndUserRepository>(),
    passwordHashRepository: gh<_i6.PasswordHashRepository>(),
    tokenRepository: gh<_i6.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i57.EnvModule {}

class _$MapsterModule extends _i58.MapsterModule {}

class _$MediatorModule extends _i59.MediatorModule {}
