// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i48;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i49;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i37;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i40;
import 'package:itrust_server/src/features/auth/application/repositories/token_repository.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i9;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i10;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i17;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/infrastructure/repositories/token_repository.dart'
    as _i33;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i42;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i43;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i12;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i41;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i3;
import 'package:itrust_server/src/features/common/application/repositories/end_user_repository.dart'
    as _i50;
import 'package:itrust_server/src/features/common/application/repositories/repositories.dart'
    as _i31;
import 'package:itrust_server/src/features/common/common.dart' as _i47;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;
import 'package:itrust_server/src/features/common/infrastructure/repositories/end_user_repository.dart'
    as _i5;
import 'package:itrust_server/src/features/common/infrastructure/repositories/staff_user_repository.dart'
    as _i32;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i6;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i44;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i45;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i8;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i19;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i20;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i35;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i36;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i18;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i34;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i22;
import 'package:json_annotation/json_annotation.dart' as _i16;
import 'package:mapster/mapster.dart' as _i27;
import 'package:mediator/mediator.dart' as _i28;

import '../../../env/env_module.dart' as _i52;
import '../third_party/mapster_module.dart' as _i53;
import '../third_party/mediator_module.dart' as _i54;

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
  gh.singleton<_i3.DateTimeProvider>(_i4.ProdDateTimeProvider());
  gh.singleton<_i3.EndUserRepository>(
    _i5.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.factory<_i6.FeedController>(() => _i6.FeedController());
  gh.singleton<_i7.GetUserByIDQueryValidator>(_i7.GetUserByIDQueryValidator());
  gh.singleton<_i8.GetUserByNickQueryValidator>(
      _i8.GetUserByNickQueryValidator());
  gh.singleton<_i9.HashService>(_i10.ProdHashService());
  gh.singleton<_i11.JsonConverter<_i12.LogOutRequest, Map<String, Object?>>>(
      _i13.LogOutRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i12.VerifyTokenRequest, Map<String, Object?>>>(
      _i14.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i12.RefreshTokenResponse, Map<String, Object?>>>(
      _i15.RefreshTokenRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i12.RegisterRequest, Map<String, Object?>>>(
      _i17.RegisterRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i18.GetUserByIDRequest, Map<String, Object?>>>(
      _i19.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i11.JsonConverter<_i18.GetUserByNickRequest, Map<String, Object?>>>(
      _i20.GetUserByNickRequestJsonConverter());
  gh.singleton<_i11.JsonConverter<_i12.LogInRequest, Map<String, Object?>>>(
      _i21.LogInRequestJsonConverter());
  gh.singleton<_i22.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i23.JwtTokenService>(
      _i24.ProdJwtTokenService(gh<_i22.JwtSettings>()));
  gh.singleton<_i25.LogInQueryValidator>(_i25.LogInQueryValidator());
  gh.singleton<_i26.LogOutCommandValidator>(_i26.LogOutCommandValidator());
  gh.singleton<_i27.Mapster>(mapsterModule.mapster);
  gh.singleton<_i28.Mediator>(mediatorModule.mediator);
  gh.singleton<_i29.RefreshTokenCommandValidator>(
      _i29.RefreshTokenCommandValidator());
  gh.singleton<_i30.RegisterCommandValidator>(_i30.RegisterCommandValidator());
  gh.singleton<_i31.StaffUserRepository>(
    _i32.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i23.TokenRepository>(
    _i33.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i34.UserController>(() => _i34.UserController(
        mediator: gh<_i28.Mediator>(),
        mapster: gh<_i27.Mapster>(),
      ));
  gh.singleton<_i35.UserMapsterRegistrar>(
      _i35.UserMapsterRegistrar(gh<_i27.Mapster>())..register());
  gh.singleton<_i36.UserMediatorRegistrar>(
      _i36.UserMediatorRegistrar(gh<_i28.Mediator>())..register());
  gh.singleton<_i37.VerifyTokenQueryHandler>(_i37.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  gh.singleton<_i40.VerifyTokenQueryValidator>(
      _i40.VerifyTokenQueryValidator());
  gh.factory<_i41.AuthController>(() => _i41.AuthController(
        mediator: gh<_i28.Mediator>(),
        mapster: gh<_i27.Mapster>(),
      ));
  gh.singleton<_i42.AuthMapsterRegistrar>(
      _i42.AuthMapsterRegistrar(gh<_i27.Mapster>())..register());
  gh.singleton<_i43.AuthMediatorRegistrar>(
      _i43.AuthMediatorRegistrar(gh<_i28.Mediator>())..register());
  gh.singleton<_i44.GetUserByIDQueryHandler>(_i44.GetUserByIDQueryHandler(
    endUserRepository: gh<_i3.EndUserRepository>(),
    staffUserRepository: gh<_i3.StaffUserRepository>(),
  ));
  gh.singleton<_i45.GetUserByNickQueryHandler>(_i45.GetUserByNickQueryHandler(
    endUserRepository: gh<_i31.EndUserRepository>(),
    staffUserRepository: gh<_i31.StaffUserRepository>(),
  ));
  gh.singleton<_i46.LogInQueryHandler>(_i46.LogInQueryHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    hashService: gh<_i9.HashService>(),
    endUserRepository: gh<_i47.EndUserRepository>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  gh.singleton<_i48.LogOutCommandHandler>(_i48.LogOutCommandHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  gh.singleton<_i49.RefreshTokenCommandHandler>(_i49.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    tokenRepository: gh<_i39.TokenRepository>(),
    endUserRepository: gh<_i50.EndUserRepository>(),
  ));
  gh.singleton<_i51.RegisterCommandHandler>(_i51.RegisterCommandHandler(
    jwtTokenService: gh<_i38.JwtTokenService>(),
    hashService: gh<_i9.HashService>(),
    endUserRepository: gh<_i47.EndUserRepository>(),
    tokenRepository: gh<_i39.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i52.EnvModule {}

class _$MapsterModule extends _i53.MapsterModule {}

class _$MediatorModule extends _i54.MediatorModule {}
