// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:collection' as _i4;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i17;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/application/generators/generators.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/application/queries/login/login_query_handler.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/application/queries/login/login_query_validator.dart'
    as _i8;
import 'package:itrust_server/src/features/auth/infrastructure/generators/jwt_token_generator.dart'
    as _i18;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i16;
import 'package:itrust_server/src/features/auth/presentation/mappers/auth_result_to_auth_response_mapper.dart'
    as _i3;
import 'package:itrust_server/src/features/auth/presentation/mappers/login_request_to_login_query_mapper.dart'
    as _i9;
import 'package:itrust_server/src/features/auth/presentation/mappers/register_request_to_register_command_mapper.dart'
    as _i15;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i5;
import 'package:itrust_server/src/features/common/common.dart' as _i21;
import 'package:itrust_server/src/features/common/infrastructure/persistence/end_user_repository.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i6;
import 'package:mapster/mapster.dart' as _i10;
import 'package:mediator/mediator.dart' as _i12;

import '../../../env/env_module.dart' as _i23;
import '../third_party/mapster_module.dart' as _i24;
import '../third_party/mediator_module.dart' as _i25;

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
  final mapsterModule = _$MapsterModule();
  final mediatorModule = _$MediatorModule();
  final envModule = _$EnvModule();
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
  gh.singleton<_i8.LoginQueryValidator>(_i8.LoginQueryValidator());
  gh.factoryParam<_i9.LoginRequestToLoginQueryMapper,
      _i4.HashMap<Type, List<Object>>, dynamic>((
    input,
    _,
  ) =>
      _i9.LoginRequestToLoginQueryMapper(input));
  gh.singleton<_i10.Mapster>(mapsterModule.mapster);
  gh.singleton<_i11.MapsterRegistrar>(
      _i11.MapsterRegistrar(gh<_i10.Mapster>())..register());
  gh.singleton<_i12.Mediator>(mediatorModule.mediator);
  gh.singleton<_i13.MediatorRegistrar>(
      _i13.MediatorRegistrar(gh<_i12.Mediator>())..register());
  gh.singleton<_i14.RegisterCommandValidator>(_i14.RegisterCommandValidator());
  gh.factoryParam<_i15.RegisterRequestToRegisterCommandMapper,
      _i4.HashMap<Type, List<Object>>, dynamic>((
    input,
    _,
  ) =>
      _i15.RegisterRequestToRegisterCommandMapper(input));
  gh.factory<String>(
    () => envModule.jwtSecret,
    instanceName: 'jwtSecret',
  );
  gh.factory<String>(
    () => envModule.jwtIssuer,
    instanceName: 'jwtIssuer',
  );
  gh.factory<String>(
    () => envModule.jwtAudience,
    instanceName: 'jwtAudience',
  );
  gh.factory<int>(
    () => envModule.jwtExpiresInMins,
    instanceName: 'jwtExpiresInMins',
  );
  gh.factory<_i16.AuthController>(() => _i16.AuthController(
        mediator: gh<_i12.Mediator>(),
        mapster: gh<_i10.Mapster>(),
      ));
  gh.singleton<_i17.JwtTokenGenerator>(_i18.ProdJwtTokenGenerator(
    secret: gh<String>(instanceName: 'jwtSecret'),
    issuer: gh<String>(instanceName: 'jwtIssuer'),
    expiresIn: gh<int>(instanceName: 'jwtExpiresInMins'),
    audience: gh<String>(instanceName: 'jwtAudience'),
  ));
  gh.factory<_i19.LoginQueryHandler>(() => _i19.LoginQueryHandler(
        jwtTokenGenerator: gh<_i20.JwtTokenGenerator>(),
        endUserRepository: gh<_i21.EndUserRepository>(),
      ));
  gh.factory<_i22.RegisterCommandHandler>(() => _i22.RegisterCommandHandler(
        jwtTokenGenerator: gh<_i20.JwtTokenGenerator>(),
        endUserRepository: gh<_i21.EndUserRepository>(),
      ));
  return getIt;
}

class _$EnvModule extends _i23.EnvModule {}

class _$MapsterModule extends _i24.MapsterModule {}

class _$MediatorModule extends _i25.MediatorModule {}
