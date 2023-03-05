// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i45;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i48;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i43;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i35;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/application/repositories/token_repository.dart'
    as _i37;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i8;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i36;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i9;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i12;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/infrastructure/repositories/token_repository.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i40;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i39;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i3;
import 'package:itrust_server/src/features/common/application/repositories/end_user_repository.dart'
    as _i47;
import 'package:itrust_server/src/features/common/application/repositories/repositories.dart'
    as _i29;
import 'package:itrust_server/src/features/common/common.dart' as _i44;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;
import 'package:itrust_server/src/features/common/infrastructure/repositories/end_user_repository.dart'
    as _i5;
import 'package:itrust_server/src/features/common/infrastructure/repositories/staff_user_repository.dart'
    as _i30;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i6;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i42;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i17;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i33;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i34;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i16;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i32;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i20;
import 'package:json_annotation/json_annotation.dart' as _i18;
import 'package:mapster/mapster.dart' as _i25;
import 'package:mediator/mediator.dart' as _i26;

import '../../../env/env_module.dart' as _i49;
import '../third_party/mapster_module.dart' as _i50;
import '../third_party/mediator_module.dart' as _i51;

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
  gh.singleton<_i8.HashService>(_i9.ProdHashService());
  gh.singleton<
          _i10.JsonConverter<_i11.RefreshTokenResponse, Map<String, Object?>>>(
      _i12.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i10.JsonConverter<_i11.VerifyTokenRequest, Map<String, Object?>>>(
      _i13.VerifyTokenRequestJsonConverter());
  gh.singleton<_i10.JsonConverter<_i11.LogOutRequest, Map<String, Object?>>>(
      _i14.LogOutRequestJsonConvert());
  gh.singleton<_i10.JsonConverter<_i11.LogInRequest, Map<String, Object?>>>(
      _i15.LogInRequestJsonConverter());
  gh.singleton<
          _i10.JsonConverter<_i16.GetUserByIDRequest, Map<String, Object?>>>(
      _i17.GetUserByIDRequestJsonConverter());
  gh.singleton<_i18.JsonConverter<_i11.RegisterRequest, Map<String, Object?>>>(
      _i19.RegisterRequestJsonConverter());
  gh.singleton<_i20.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i21.JwtTokenService>(
      _i22.ProdJwtTokenService(gh<_i20.JwtSettings>()));
  gh.singleton<_i23.LogInQueryValidator>(_i23.LogInQueryValidator());
  gh.singleton<_i24.LogOutCommandValidator>(_i24.LogOutCommandValidator());
  gh.singleton<_i25.Mapster>(mapsterModule.mapster);
  gh.singleton<_i26.Mediator>(mediatorModule.mediator);
  gh.singleton<_i27.RefreshTokenCommandValidator>(
      _i27.RefreshTokenCommandValidator());
  gh.singleton<_i28.RegisterCommandValidator>(_i28.RegisterCommandValidator());
  gh.singleton<_i29.StaffUserRepository>(
    _i30.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i21.TokenRepository>(
    _i31.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i32.UserController>(() => _i32.UserController(
        mediator: gh<_i26.Mediator>(),
        mapster: gh<_i25.Mapster>(),
      ));
  gh.singleton<_i33.UserMapsterRegistrar>(
      _i33.UserMapsterRegistrar(gh<_i25.Mapster>())..register());
  gh.singleton<_i34.UserMediatorRegistrar>(
      _i34.UserMediatorRegistrar(gh<_i26.Mediator>())..register());
  gh.singleton<_i35.VerifyTokenQueryHandler>(_i35.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    tokenRepository: gh<_i37.TokenRepository>(),
  ));
  gh.singleton<_i38.VerifyTokenQueryValidator>(
      _i38.VerifyTokenQueryValidator());
  gh.factory<_i39.AuthController>(() => _i39.AuthController(
        mediator: gh<_i26.Mediator>(),
        mapster: gh<_i25.Mapster>(),
      ));
  gh.singleton<_i40.AuthMapsterRegistrar>(
      _i40.AuthMapsterRegistrar(gh<_i25.Mapster>())..register());
  gh.singleton<_i41.AuthMediatorRegistrar>(
      _i41.AuthMediatorRegistrar(gh<_i26.Mediator>())..register());
  gh.singleton<_i42.GetUserByIDQueryHandler>(_i42.GetUserByIDQueryHandler(
    endUserRepository: gh<_i3.EndUserRepository>(),
    staffUserRepository: gh<_i3.StaffUserRepository>(),
  ));
  gh.singleton<_i43.LogInQueryHandler>(_i43.LogInQueryHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    hashService: gh<_i8.HashService>(),
    endUserRepository: gh<_i44.EndUserRepository>(),
    tokenRepository: gh<_i37.TokenRepository>(),
  ));
  gh.singleton<_i45.LogOutCommandHandler>(_i45.LogOutCommandHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    tokenRepository: gh<_i37.TokenRepository>(),
  ));
  gh.singleton<_i46.RefreshTokenCommandHandler>(_i46.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    tokenRepository: gh<_i37.TokenRepository>(),
    endUserRepository: gh<_i47.EndUserRepository>(),
  ));
  gh.singleton<_i48.RegisterCommandHandler>(_i48.RegisterCommandHandler(
    jwtTokenService: gh<_i36.JwtTokenService>(),
    hashService: gh<_i8.HashService>(),
    endUserRepository: gh<_i44.EndUserRepository>(),
    tokenRepository: gh<_i37.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i49.EnvModule {}

class _$MapsterModule extends _i50.MapsterModule {}

class _$MediatorModule extends _i51.MediatorModule {}
