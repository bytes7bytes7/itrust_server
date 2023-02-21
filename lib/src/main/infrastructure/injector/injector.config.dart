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
    as _i21;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/application/queries/login/login_query_handler.dart'
    as _i12;
import 'package:itrust_server/src/features/auth/application/queries/login/login_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i18;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/presentation/mappers/auth_result_to_auth_response_mapper.dart'
    as _i3;
import 'package:itrust_server/src/features/auth/presentation/mappers/login_request_to_login_query_mapper.dart'
    as _i16;
import 'package:itrust_server/src/features/auth/presentation/mappers/register_request_to_register_command_mapper.dart'
    as _i23;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i5;
import 'package:itrust_server/src/features/common/common.dart' as _i14;
import 'package:itrust_server/src/features/common/infrastructure/persistence/end_user_repository.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i6;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i8;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i9;
import 'package:mapster/mapster.dart' as _i17;
import 'package:mediator/mediator.dart' as _i19;

import '../../../env/env_module.dart' as _i25;
import '../third_party/mapster_module.dart' as _i26;
import '../third_party/mediator_module.dart' as _i27;

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
  gh.factory<_i12.LoginQueryHandler>(() => _i12.LoginQueryHandler(
        jwtTokenService: gh<_i13.JwtTokenService>(),
        endUserRepository: gh<_i14.EndUserRepository>(),
      ));
  gh.singleton<_i15.LoginQueryValidator>(_i15.LoginQueryValidator());
  gh.factoryParam<_i16.LoginRequestToLoginQueryMapper,
      _i4.HashMap<Type, List<Object>>, dynamic>((
    input,
    _,
  ) =>
      _i16.LoginRequestToLoginQueryMapper(input));
  gh.singleton<_i17.Mapster>(mapsterModule.mapster);
  gh.singleton<_i18.MapsterRegistrar>(
      _i18.MapsterRegistrar(gh<_i17.Mapster>())..register());
  gh.singleton<_i19.Mediator>(mediatorModule.mediator);
  gh.singleton<_i20.MediatorRegistrar>(
      _i20.MediatorRegistrar(gh<_i19.Mediator>())..register());
  gh.factory<_i21.RegisterCommandHandler>(() => _i21.RegisterCommandHandler(
        jwtTokenService: gh<_i13.JwtTokenService>(),
        endUserRepository: gh<_i14.EndUserRepository>(),
      ));
  gh.singleton<_i22.RegisterCommandValidator>(_i22.RegisterCommandValidator());
  gh.factoryParam<_i23.RegisterRequestToRegisterCommandMapper,
      _i4.HashMap<Type, List<Object>>, dynamic>((
    input,
    _,
  ) =>
      _i23.RegisterRequestToRegisterCommandMapper(input));
  gh.factory<_i24.AuthController>(() => _i24.AuthController(
        mediator: gh<_i19.Mediator>(),
        mapster: gh<_i17.Mapster>(),
      ));
  return getIt;
}

class _$EnvModule extends _i25.EnvModule {}

class _$MapsterModule extends _i26.MapsterModule {}

class _$MediatorModule extends _i27.MediatorModule {}
