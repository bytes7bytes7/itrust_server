// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i8;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i13;
import 'package:itrust_server/src/features/auth/application/generators/generators.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/application/queries/login/login_query_handler.dart'
    as _i10;
import 'package:itrust_server/src/features/auth/infrastructure/generators/jwt_token_generator.dart'
    as _i9;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_register.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i7;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i3;
import 'package:itrust_server/src/features/common/common.dart' as _i12;
import 'package:itrust_server/src/features/common/infrastructure/persistence/end_user_repository.dart'
    as _i5;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;
import 'package:mediatr/mediatr.dart' as _i6;

import '../../../env/env_module.dart' as _i15;
import '../third_party/mediator_module.dart' as _i16;

const String _test = 'test';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
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
  final mediatorModule = _$MediatorModule();
  final envModule = _$EnvModule();
  gh.singleton<_i3.DateTimeProvider>(_i4.ProdDateTimeProvider());
  gh.singleton<_i3.EndUserRepository>(
    _i5.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i6.Mediator>(mediatorModule.mediator);
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
  gh.factory<_i7.AuthController>(
      () => _i7.AuthController(mediator: gh<_i6.Mediator>()));
  gh.singleton<_i8.JwtTokenGenerator>(_i9.ProdJwtTokenGenerator(
    secret: gh<String>(instanceName: 'jwtSecret'),
    issuer: gh<String>(instanceName: 'jwtIssuer'),
    expiresIn: gh<int>(instanceName: 'jwtExpiresInMins'),
    audience: gh<String>(instanceName: 'jwtAudience'),
  ));
  gh.factory<_i10.LoginQueryHandler>(() => _i10.LoginQueryHandler(
        jwtTokenGenerator: gh<_i11.JwtTokenGenerator>(),
        endUserRepository: gh<_i12.EndUserRepository>(),
      ));
  gh.factory<_i13.RegisterCommandHandler>(() => _i13.RegisterCommandHandler(
        jwtTokenGenerator: gh<_i11.JwtTokenGenerator>(),
        endUserRepository: gh<_i12.EndUserRepository>(),
      ));
  gh.singleton<_i14.MediatorRegister>(_i14.MediatorRegister(
    gh<_i6.Mediator>(),
    gh<_i8.RegisterCommandHandler>(),
    gh<_i8.LoginQueryHandler>(),
  )..register());
  return getIt;
}

class _$EnvModule extends _i15.EnvModule {}

class _$MediatorModule extends _i16.MediatorModule {}
