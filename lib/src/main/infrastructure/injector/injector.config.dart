// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i36;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i37;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i28;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/application/repositories/token_repository.dart'
    as _i30;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i8;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i9;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i12;
import 'package:itrust_server/src/features/auth/infrastructure/repositories/token_repository.dart'
    as _i26;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i32;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i3;
import 'package:itrust_server/src/features/common/application/repositories/end_user_repository.dart'
    as _i38;
import 'package:itrust_server/src/features/common/application/repositories/repositories.dart'
    as _i24;
import 'package:itrust_server/src/features/common/common.dart' as _i35;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;
import 'package:itrust_server/src/features/common/infrastructure/repositories/end_user_repository.dart'
    as _i5;
import 'package:itrust_server/src/features/common/infrastructure/repositories/staff_user_repository.dart'
    as _i25;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i6;
import 'package:itrust_server/src/features/user/application/queries/get_user/get_user_query_handler.dart'
    as _i33;
import 'package:itrust_server/src/features/user/application/queries/get_user/get_user_query_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i27;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i13;
import 'package:json_annotation/json_annotation.dart' as _i10;
import 'package:mapster/mapster.dart' as _i18;
import 'package:mediator/mediator.dart' as _i20;

import '../../../env/env_module.dart' as _i40;
import '../third_party/mapster_module.dart' as _i41;
import '../third_party/mediator_module.dart' as _i42;

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
  gh.singleton<_i7.GetUserQueryValidator>(_i7.GetUserQueryValidator());
  gh.singleton<_i8.HashService>(_i9.ProdHashService());
  gh.singleton<_i10.JsonConverter<_i11.RegisterRequest, Map<String, Object?>>>(
      _i12.RegisterRequestJsonConverter());
  gh.singleton<_i13.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i14.JwtTokenService>(
      _i15.ProdJwtTokenService(gh<_i13.JwtSettings>()));
  gh.singleton<_i16.LogInQueryValidator>(_i16.LogInQueryValidator());
  gh.singleton<_i17.LogOutCommandValidator>(_i17.LogOutCommandValidator());
  gh.singleton<_i18.Mapster>(mapsterModule.mapster);
  gh.singleton<_i19.MapsterRegistrar>(
      _i19.MapsterRegistrar(gh<_i18.Mapster>())..register());
  gh.singleton<_i20.Mediator>(mediatorModule.mediator);
  gh.singleton<_i21.MediatorRegistrar>(
      _i21.MediatorRegistrar(gh<_i20.Mediator>())..register());
  gh.singleton<_i22.RefreshTokenCommandValidator>(
      _i22.RefreshTokenCommandValidator());
  gh.singleton<_i23.RegisterCommandValidator>(_i23.RegisterCommandValidator());
  gh.singleton<_i24.StaffUserRepository>(
    _i25.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i14.TokenRepository>(
    _i26.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i27.UserController>(() => _i27.UserController(
        mediator: gh<_i20.Mediator>(),
        mapster: gh<_i18.Mapster>(),
      ));
  gh.singleton<_i28.VerifyTokenQueryHandler>(_i28.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  gh.singleton<_i31.VerifyTokenQueryValidator>(
      _i31.VerifyTokenQueryValidator());
  gh.factory<_i32.AuthController>(() => _i32.AuthController(
        mediator: gh<_i20.Mediator>(),
        mapster: gh<_i18.Mapster>(),
      ));
  gh.singleton<_i33.GetUserQueryHandler>(_i33.GetUserQueryHandler(
    endUserRepository: gh<_i3.EndUserRepository>(),
    staffUserRepository: gh<_i3.StaffUserRepository>(),
  ));
  gh.singleton<_i34.LogInQueryHandler>(_i34.LogInQueryHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    hashService: gh<_i8.HashService>(),
    endUserRepository: gh<_i35.EndUserRepository>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  gh.singleton<_i36.LogOutCommandHandler>(_i36.LogOutCommandHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  gh.singleton<_i37.RefreshTokenCommandHandler>(_i37.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    tokenRepository: gh<_i30.TokenRepository>(),
    endUserRepository: gh<_i38.EndUserRepository>(),
  ));
  gh.singleton<_i39.RegisterCommandHandler>(_i39.RegisterCommandHandler(
    jwtTokenService: gh<_i29.JwtTokenService>(),
    hashService: gh<_i8.HashService>(),
    endUserRepository: gh<_i35.EndUserRepository>(),
    tokenRepository: gh<_i30.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i40.EnvModule {}

class _$MapsterModule extends _i41.MapsterModule {}

class _$MediatorModule extends _i42.MediatorModule {}
