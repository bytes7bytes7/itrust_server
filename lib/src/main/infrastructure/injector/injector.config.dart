// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:collection' as _i4;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i10;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i25;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/auth/application/persistence/token_repository.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/application/queries/login/login_query_handler.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/application/queries/login/login_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i26;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/infrastructure/persistence/token_repository.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i17;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/presentation/mappers/auth_result_to_auth_response_mapper.dart'
    as _i3;
import 'package:itrust_server/src/features/auth/presentation/mappers/login_request_to_login_query_mapper.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/presentation/mappers/register_request_to_register_command_mapper.dart'
    as _i19;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i5;
import 'package:itrust_server/src/features/common/common.dart' as _i23;
import 'package:itrust_server/src/features/common/infrastructure/persistence/end_user_repository.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i6;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i8;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i9;
import 'package:mapster/mapster.dart' as _i14;
import 'package:mediator/mediator.dart' as _i16;

import '../../../env/env_module.dart' as _i27;
import '../third_party/mapster_module.dart' as _i28;
import '../third_party/mediator_module.dart' as _i29;

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
  gh.factoryParam<_i3.AuthResultToAuthResponseMapper,
      _i4.HashMap<Type, List<Object>>, dynamic>((
    input,
    _,
  ) =>
      _i3.AuthResultToAuthResponseMapper(input));
  gh.singleton<_i5.DateTimeProvider>(_i6.ProdDateTimeProvider());
  gh.singleton<_i5.EndUserRepository>(
    _i7.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.factory<_i8.FeedController>(() => _i8.FeedController());
  gh.singleton<_i9.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i10.JwtTokenService>(
      _i11.ProdJwtTokenService(gh<_i9.JwtSettings>()));
  gh.singleton<_i12.LoginQueryValidator>(_i12.LoginQueryValidator());
  gh.factoryParam<_i13.LoginRequestToLoginQueryMapper,
      _i4.HashMap<Type, List<Object>>, dynamic>((
    input,
    _,
  ) =>
      _i13.LoginRequestToLoginQueryMapper(input));
  gh.singleton<_i14.Mapster>(mapsterModule.mapster);
  gh.singleton<_i15.MapsterRegistrar>(
      _i15.MapsterRegistrar(gh<_i14.Mapster>())..register());
  gh.singleton<_i16.Mediator>(mediatorModule.mediator);
  gh.singleton<_i17.MediatorRegistrar>(
      _i17.MediatorRegistrar(gh<_i16.Mediator>())..register());
  gh.singleton<_i18.RegisterCommandValidator>(_i18.RegisterCommandValidator());
  gh.factoryParam<_i19.RegisterRequestToRegisterCommandMapper,
      _i4.HashMap<Type, List<Object>>, dynamic>((
    input,
    _,
  ) =>
      _i19.RegisterRequestToRegisterCommandMapper(input));
  gh.singleton<_i10.TokenRepository>(
    _i20.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i21.AuthController>(() => _i21.AuthController(
        mediator: gh<_i16.Mediator>(),
        mapster: gh<_i14.Mapster>(),
      ));
  gh.factory<_i22.LoginQueryHandler>(() => _i22.LoginQueryHandler(
        endUserRepository: gh<_i23.EndUserRepository>(),
        tokenRepository: gh<_i24.TokenRepository>(),
      ));
  gh.factory<_i25.RegisterCommandHandler>(() => _i25.RegisterCommandHandler(
        jwtTokenService: gh<_i26.JwtTokenService>(),
        endUserRepository: gh<_i23.EndUserRepository>(),
        tokenRepository: gh<_i24.TokenRepository>(),
      ));
  return getIt;
}

class _$EnvModule extends _i27.EnvModule {}

class _$MapsterModule extends _i28.MapsterModule {}

class _$MediatorModule extends _i29.MediatorModule {}
