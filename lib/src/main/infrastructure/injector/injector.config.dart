// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i10;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i28;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i26;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/application/repositories/token_repository.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i7;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i8;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/infrastructure/repositories/token_repository.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i17;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i25;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i3;
import 'package:itrust_server/src/features/common/application/repositories/end_user_repository.dart'
    as _i30;
import 'package:itrust_server/src/features/common/common.dart' as _i27;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;
import 'package:itrust_server/src/features/common/infrastructure/repositories/end_user_repository.dart'
    as _i5;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i6;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i9;
import 'package:mapster/mapster.dart' as _i14;
import 'package:mediator/mediator.dart' as _i16;

import '../../../env/env_module.dart' as _i32;
import '../third_party/mapster_module.dart' as _i33;
import '../third_party/mediator_module.dart' as _i34;

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
  gh.singleton<_i7.HashService>(_i8.ProdHashService());
  gh.singleton<_i9.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i10.JwtTokenService>(
      _i11.ProdJwtTokenService(gh<_i9.JwtSettings>()));
  gh.singleton<_i12.LogInQueryValidator>(_i12.LogInQueryValidator());
  gh.singleton<_i13.LogOutCommandValidator>(_i13.LogOutCommandValidator());
  gh.singleton<_i14.Mapster>(mapsterModule.mapster);
  gh.singleton<_i15.MapsterRegistrar>(
      _i15.MapsterRegistrar(gh<_i14.Mapster>())..register());
  gh.singleton<_i16.Mediator>(mediatorModule.mediator);
  gh.singleton<_i17.MediatorRegistrar>(
      _i17.MediatorRegistrar(gh<_i16.Mediator>())..register());
  gh.singleton<_i18.RefreshTokenCommandValidator>(
      _i18.RefreshTokenCommandValidator());
  gh.singleton<_i19.RegisterCommandValidator>(_i19.RegisterCommandValidator());
  gh.singleton<_i10.TokenRepository>(
    _i20.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i21.VerifyTokenQueryHandler>(_i21.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i22.JwtTokenService>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  gh.singleton<_i24.VerifyTokenQueryValidator>(
      _i24.VerifyTokenQueryValidator());
  gh.factory<_i25.AuthController>(() => _i25.AuthController(
        mediator: gh<_i16.Mediator>(),
        mapster: gh<_i14.Mapster>(),
      ));
  gh.singleton<_i26.LogInQueryHandler>(_i26.LogInQueryHandler(
    jwtTokenService: gh<_i22.JwtTokenService>(),
    hashService: gh<_i7.HashService>(),
    endUserRepository: gh<_i27.EndUserRepository>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  gh.singleton<_i28.LogOutCommandHandler>(_i28.LogOutCommandHandler(
    jwtTokenService: gh<_i22.JwtTokenService>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  gh.singleton<_i29.RefreshTokenCommandHandler>(_i29.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i22.JwtTokenService>(),
    tokenRepository: gh<_i23.TokenRepository>(),
    endUserRepository: gh<_i30.EndUserRepository>(),
  ));
  gh.singleton<_i31.RegisterCommandHandler>(_i31.RegisterCommandHandler(
    jwtTokenService: gh<_i22.JwtTokenService>(),
    hashService: gh<_i7.HashService>(),
    endUserRepository: gh<_i27.EndUserRepository>(),
    tokenRepository: gh<_i23.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i32.EnvModule {}

class _$MapsterModule extends _i33.MapsterModule {}

class _$MediatorModule extends _i34.MediatorModule {}
