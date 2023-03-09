// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i23;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i53;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i54;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i22;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i52;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i27;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i35;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i38;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i40;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i41;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i42;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i33;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i50;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/application/repositories/password_hash_repository.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/application/repositories/token_repository.dart'
    as _i32;
import 'package:itrust_server/src/features/auth/application/services/hash_service.dart'
    as _i14;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i30;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/hash_service.dart'
    as _i15;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i28;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i18;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i19;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i25;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i20;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i56;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i17;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i55;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i6;
import 'package:itrust_server/src/features/common/application/repositories/end_user_repository.dart'
    as _i39;
import 'package:itrust_server/src/features/common/application/repositories/repositories.dart'
    as _i12;
import 'package:itrust_server/src/features/common/common.dart' as _i4;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i7;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i8;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i9;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i11;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i48;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i49;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i47;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i43;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i44;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i45;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i46;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i26;
import 'package:json_annotation/json_annotation.dart' as _i24;
import 'package:mapster/mapster.dart' as _i36;
import 'package:mediator/mediator.dart' as _i37;

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
  gh.singleton<_i3.ChangePersonalInfoCommandHandler>(
      _i3.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i4.EndUserRepository>()));
  gh.singleton<_i5.ChangePersonalInfoCommandValidator>(
      _i5.ChangePersonalInfoCommandValidator());
  gh.singleton<_i6.DateTimeProvider>(_i7.ProdDateTimeProvider());
  gh.factory<_i8.FeedController>(() => _i8.FeedController());
  gh.singleton<_i9.GetUserByIDQueryHandler>(_i9.GetUserByIDQueryHandler(
    endUserRepository: gh<_i6.EndUserRepository>(),
    staffUserRepository: gh<_i6.StaffUserRepository>(),
  ));
  gh.singleton<_i10.GetUserByIDQueryValidator>(
      _i10.GetUserByIDQueryValidator());
  gh.singleton<_i11.GetUserByNickQueryHandler>(_i11.GetUserByNickQueryHandler(
    endUserRepository: gh<_i12.EndUserRepository>(),
    staffUserRepository: gh<_i12.StaffUserRepository>(),
  ));
  gh.singleton<_i13.GetUserByNickQueryValidator>(
      _i13.GetUserByNickQueryValidator());
  gh.singleton<_i14.HashService>(_i15.ProdHashService());
  gh.singleton<_i16.JsonConverter<_i17.LogInRequest, Map<String, Object?>>>(
      _i18.LogInRequestJsonConverter());
  gh.singleton<_i16.JsonConverter<_i17.LogOutRequest, Map<String, Object?>>>(
      _i19.LogOutRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i17.VerifyTokenRequest, Map<String, Object?>>>(
      _i20.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i16.JsonConverter<_i17.RefreshTokenRequest, Map<String, Object?>>>(
      _i21.RefreshTokenRequestJsonConverter());
  gh.singleton<
      _i16.JsonConverter<_i22.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i23.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i24.JsonConverter<_i17.RegisterRequest, Map<String, Object?>>>(
      _i25.RegisterRequestJsonConverter());
  gh.singleton<_i26.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i27.JwtTokenService>(
      _i28.ProdJwtTokenService(gh<_i26.JwtSettings>()));
  gh.singleton<_i29.LogInQueryHandler>(_i29.LogInQueryHandler(
    jwtTokenService: gh<_i30.JwtTokenService>(),
    hashService: gh<_i14.HashService>(),
    endUserRepository: gh<_i4.EndUserRepository>(),
    passwordHashRepository: gh<_i31.PasswordHashRepository>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  gh.singleton<_i33.LogInQueryValidator>(_i33.LogInQueryValidator());
  gh.singleton<_i34.LogOutCommandHandler>(_i34.LogOutCommandHandler(
    jwtTokenService: gh<_i30.JwtTokenService>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  gh.singleton<_i35.LogOutCommandValidator>(_i35.LogOutCommandValidator());
  gh.singleton<_i36.Mapster>(mapsterModule.mapster);
  gh.singleton<_i37.Mediator>(mediatorModule.mediator);
  gh.singleton<_i38.RefreshTokenCommandHandler>(_i38.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i30.JwtTokenService>(),
    tokenRepository: gh<_i32.TokenRepository>(),
    endUserRepository: gh<_i39.EndUserRepository>(),
  ));
  gh.singleton<_i40.RefreshTokenCommandValidator>(
      _i40.RefreshTokenCommandValidator());
  gh.singleton<_i41.RegisterCommandHandler>(_i41.RegisterCommandHandler(
    jwtTokenService: gh<_i30.JwtTokenService>(),
    hashService: gh<_i14.HashService>(),
    endUserRepository: gh<_i4.EndUserRepository>(),
    passwordHashRepository: gh<_i31.PasswordHashRepository>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  gh.singleton<_i42.RegisterCommandValidator>(_i42.RegisterCommandValidator());
  gh.singleton<_i43.TestEndUserRepository>(
    _i43.TestEndUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i44.TestPasswordHashRepository>(
    _i44.TestPasswordHashRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i45.TestStaffUserRepository>(
    _i45.TestStaffUserRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i46.TestTokenRepository>(
    _i46.TestTokenRepository(),
    registerFor: {_test},
  );
  gh.factory<_i47.UserController>(() => _i47.UserController(
        mediator: gh<_i37.Mediator>(),
        mapster: gh<_i36.Mapster>(),
      ));
  gh.singleton<_i48.UserMapsterRegistrar>(
      _i48.UserMapsterRegistrar(gh<_i36.Mapster>())..register());
  gh.singleton<_i49.UserMediatorRegistrar>(
      _i49.UserMediatorRegistrar(gh<_i37.Mediator>())..register());
  gh.singleton<_i50.VerifyTokenQueryHandler>(_i50.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i30.JwtTokenService>(),
    tokenRepository: gh<_i32.TokenRepository>(),
  ));
  gh.singleton<_i51.VerifyTokenQueryValidator>(
      _i51.VerifyTokenQueryValidator());
  gh.factory<_i52.AccountController>(() => _i52.AccountController(
        mediator: gh<_i37.Mediator>(),
        mapster: gh<_i36.Mapster>(),
      ));
  gh.singleton<_i53.AccountMapsterRegistrar>(
      _i53.AccountMapsterRegistrar(gh<_i36.Mapster>())..register());
  gh.singleton<_i54.AccountMediatorRegistrar>(
      _i54.AccountMediatorRegistrar(gh<_i37.Mediator>())..register());
  gh.factory<_i55.AuthController>(() => _i55.AuthController(
        mediator: gh<_i37.Mediator>(),
        mapster: gh<_i36.Mapster>(),
      ));
  gh.singleton<_i56.AuthMapsterRegistrar>(
      _i56.AuthMapsterRegistrar(gh<_i36.Mapster>())..register());
  gh.singleton<_i57.AuthMediatorRegistrar>(
      _i57.AuthMediatorRegistrar(gh<_i37.Mediator>())..register());
  return getIt;
}

class _$EnvModule extends _i58.EnvModule {}

class _$MapsterModule extends _i59.MapsterModule {}

class _$MediatorModule extends _i60.MediatorModule {}
