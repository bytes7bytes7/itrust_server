// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i6;
import 'package:itrust_server/src/features/auth/infrastructure/commands/auth_command_service.dart'
    as _i8;
import 'package:itrust_server/src/features/auth/infrastructure/generators/jwt_token_generator.dart'
    as _i7;
import 'package:itrust_server/src/features/auth/infrastructure/queries/auth_query_service.dart'
    as _i10;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i11;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i3;
import 'package:itrust_server/src/features/common/common.dart' as _i9;
import 'package:itrust_server/src/features/common/infrastructure/persistence/end_user_repository.dart'
    as _i5;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i4;

import '../../../env/env_module.dart' as _i12;

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
  final envModule = _$EnvModule();
  gh.singleton<_i3.DateTimeProvider>(_i4.ProdDateTimeProvider());
  gh.singleton<_i3.EndUserRepository>(
    _i5.TestEndUserRepository(),
    registerFor: {_test},
  );
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
  gh.singleton<_i6.JwtTokenGenerator>(_i7.ProdJwtTokenGenerator(
    secret: gh<String>(instanceName: 'jwtSecret'),
    issuer: gh<String>(instanceName: 'jwtIssuer'),
    expiresIn: gh<int>(instanceName: 'jwtExpiresInMins'),
    audience: gh<String>(instanceName: 'jwtAudience'),
  ));
  gh.singleton<_i6.AuthCommandService>(
    _i8.TestAuthCommandService(
      jwtTokenGenerator: gh<_i6.JwtTokenGenerator>(),
      endUserRepository: gh<_i9.EndUserRepository>(),
    ),
    registerFor: {_test},
  );
  gh.singleton<_i6.AuthQueryService>(
    _i10.TestAuthQueryService(
      jwtTokenGenerator: gh<_i6.JwtTokenGenerator>(),
      endUserRepository: gh<_i9.EndUserRepository>(),
    ),
    registerFor: {_test},
  );
  gh.factory<_i11.AuthController>(() => _i11.AuthController(
        authCommandService: gh<_i6.AuthCommandService>(),
        authQueryService: gh<_i6.AuthQueryService>(),
      ));
  return getIt;
}

class _$EnvModule extends _i12.EnvModule {}
