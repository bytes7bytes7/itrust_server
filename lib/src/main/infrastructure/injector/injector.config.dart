// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i48;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i14;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i43;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i44;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i13;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i42;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i54;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i52;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/application/repositories/password_hash_repository.dart'
    as _i53;
import 'package:itrust_server/src/features/auth/application/repositories/token_repository.dart'
    as _i40;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i10;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i39;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i11;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i18;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i17;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/infrastructure/repositories/password_hash_repository.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/infrastructure/repositories/token_repository.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i47;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i16;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i45;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i4;
import 'package:itrust_server/src/features/common/application/repositories/end_user_repository.dart'
    as _i56;
import 'package:itrust_server/src/features/common/application/repositories/repositories.dart'
    as _i32;
import 'package:itrust_server/src/features/common/common.dart' as _i49;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i5;
import 'package:itrust_server/src/features/common/infrastructure/repositories/end_user_repository.dart'
    as _i6;
import 'package:itrust_server/src/features/common/infrastructure/repositories/staff_user_repository.dart'
    as _i33;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i7;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i50;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i8;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i51;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i9;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i36;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i37;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i35;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i22;
import 'package:json_annotation/json_annotation.dart' as _i15;
import 'package:mapster/mapster.dart' as _i27;
import 'package:mediator/mediator.dart' as _i28;

import '../../../env/env_module.dart' as _i58;
import '../third_party/mapster_module.dart' as _i59;
import '../third_party/mediator_module.dart' as _i60;

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
  gh.singleton<_i3.ChangePersonalInfoCommandValidator>(
      _i3.ChangePersonalInfoCommandValidator());
  gh.singleton<_i4.DateTimeProvider>(_i5.ProdDateTimeProvider());
  gh.singleton<_i4.EndUserRepository>(
    _i6.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.factory<_i7.FeedController>(() => _i7.FeedController());
  gh.singleton<_i8.GetUserByIDQueryValidator>(_i8.GetUserByIDQueryValidator());
  gh.singleton<_i9.GetUserByNickQueryValidator>(
      _i9.GetUserByNickQueryValidator());
  gh.singleton<_i10.HashService>(_i11.ProdHashService());
  gh.singleton<
      _i12.JsonConverter<_i13.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i14.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i15.JsonConverter<_i16.RegisterRequest, Map<String, Object?>>>(
      _i17.RegisterRequestJsonConverter());
  gh.singleton<_i12.JsonConverter<_i16.LogInRequest, Map<String, Object?>>>(
      _i18.LogInRequestJsonConverter());
  gh.singleton<_i12.JsonConverter<_i16.LogOutRequest, Map<String, Object?>>>(
      _i19.LogOutRequestJsonConverter());
  gh.singleton<
          _i12.JsonConverter<_i16.VerifyTokenRequest, Map<String, Object?>>>(
      _i20.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i12.JsonConverter<_i16.RefreshTokenRequest, Map<String, Object?>>>(
      _i21.RefreshTokenRequestJsonConverter());
  gh.singleton<_i22.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i23.JwtTokenService>(
      _i24.ProdJwtTokenService(gh<_i22.JwtSettings>()));
  gh.singleton<_i25.LogInQueryValidator>(_i25.LogInQueryValidator());
  gh.singleton<_i26.LogOutCommandValidator>(_i26.LogOutCommandValidator());
  gh.singleton<_i27.Mapster>(mapsterModule.mapster);
  gh.singleton<_i28.Mediator>(mediatorModule.mediator);
  gh.singleton<_i23.PasswordHashRepository>(
    _i29.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i30.RefreshTokenCommandValidator>(
      _i30.RefreshTokenCommandValidator());
  gh.singleton<_i31.RegisterCommandValidator>(_i31.RegisterCommandValidator());
  gh.singleton<_i32.StaffUserRepository>(
    _i33.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i23.TokenRepository>(
    _i34.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i35.UserController>(() => _i35.UserController(
        mediator: gh<_i28.Mediator>(),
        mapster: gh<_i27.Mapster>(),
      ));
  gh.singleton<_i36.UserMapsterRegistrar>(
      _i36.UserMapsterRegistrar(gh<_i27.Mapster>())..register());
  gh.singleton<_i37.UserMediatorRegistrar>(
      _i37.UserMediatorRegistrar(gh<_i28.Mediator>())..register());
  gh.singleton<_i38.VerifyTokenQueryHandler>(_i38.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i39.JwtTokenService>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  gh.singleton<_i41.VerifyTokenQueryValidator>(
      _i41.VerifyTokenQueryValidator());
  gh.factory<_i42.AccountController>(() => _i42.AccountController(
        mediator: gh<_i28.Mediator>(),
        mapster: gh<_i27.Mapster>(),
      ));
  gh.singleton<_i43.AccountMapsterRegistrar>(
      _i43.AccountMapsterRegistrar(gh<_i27.Mapster>())..register());
  gh.singleton<_i44.AccountMediatorRegistrar>(
      _i44.AccountMediatorRegistrar(gh<_i28.Mediator>())..register());
  gh.factory<_i45.AuthController>(() => _i45.AuthController(
        mediator: gh<_i28.Mediator>(),
        mapster: gh<_i27.Mapster>(),
      ));
  gh.singleton<_i46.AuthMapsterRegistrar>(
      _i46.AuthMapsterRegistrar(gh<_i27.Mapster>())..register());
  gh.singleton<_i47.AuthMediatorRegistrar>(
      _i47.AuthMediatorRegistrar(gh<_i28.Mediator>())..register());
  gh.singleton<_i48.ChangePersonalInfoCommandHandler>(
      _i48.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i49.EndUserRepository>()));
  gh.singleton<_i50.GetUserByIDQueryHandler>(_i50.GetUserByIDQueryHandler(
    endUserRepository: gh<_i4.EndUserRepository>(),
    staffUserRepository: gh<_i4.StaffUserRepository>(),
  ));
  gh.singleton<_i51.GetUserByNickQueryHandler>(_i51.GetUserByNickQueryHandler(
    endUserRepository: gh<_i32.EndUserRepository>(),
    staffUserRepository: gh<_i32.StaffUserRepository>(),
  ));
  gh.singleton<_i52.LogInQueryHandler>(_i52.LogInQueryHandler(
    jwtTokenService: gh<_i39.JwtTokenService>(),
    hashService: gh<_i10.HashService>(),
    endUserRepository: gh<_i49.EndUserRepository>(),
    passwordHashRepository: gh<_i53.PasswordHashRepository>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  gh.singleton<_i54.LogOutCommandHandler>(_i54.LogOutCommandHandler(
    jwtTokenService: gh<_i39.JwtTokenService>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  gh.singleton<_i55.RefreshTokenCommandHandler>(_i55.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i39.JwtTokenService>(),
    tokenRepository: gh<_i40.TokenRepository>(),
    endUserRepository: gh<_i56.EndUserRepository>(),
  ));
  gh.singleton<_i57.RegisterCommandHandler>(_i57.RegisterCommandHandler(
    jwtTokenService: gh<_i39.JwtTokenService>(),
    hashService: gh<_i10.HashService>(),
    endUserRepository: gh<_i49.EndUserRepository>(),
    passwordHashRepository: gh<_i53.PasswordHashRepository>(),
    tokenRepository: gh<_i40.TokenRepository>(),
  ));
  return getIt;
}

class _$EnvModule extends _i58.EnvModule {}

class _$MapsterModule extends _i59.MapsterModule {}

class _$MediatorModule extends _i60.MediatorModule {}
