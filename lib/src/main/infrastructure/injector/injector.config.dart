// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i5;
import 'package:itrust_server/src/features/auth/infrastructure/generators/jwt_token_generator.dart'
    as _i6;
import 'package:itrust_server/src/features/auth/infrastructure/services/auth_service.dart'
    as _i8;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i9;
import 'package:itrust_server/src/features/common/domain/domain.dart' as _i3;
import 'package:itrust_server/src/features/common/infrastructure/persistence/end_user_repository.dart'
    as _i4;
import 'package:itrust_server/src/features/common/infrastructure/persistence/staff_user_repository.dart'
    as _i7;

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
  gh.singleton<_i3.EndUserRepository>(
    _i4.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.JwtTokenGenerator>(_i6.ProdJwtTokenGenerator());
  gh.singleton<_i3.StaffUserRepository>(
    _i7.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.AuthService>(
    _i8.TestAuthService(jwtTokenGenerator: gh<_i5.JwtTokenGenerator>()),
    registerFor: {_test},
  );
  gh.factory<_i9.AuthController>(
      () => _i9.AuthController(authService: gh<_i5.AuthService>()));
  return getIt;
}
