// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i85;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i106;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i66;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i92;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i10;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i39;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i80;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i81;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i38;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i79;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i48;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i102;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i52;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i103;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i64;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i104;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i65;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i101;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i76;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i78;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i77;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i49;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i24;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i23;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i22;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i37;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i42;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i83;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i84;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i21;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i82;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i6;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i63;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i18;
import 'package:itrust_server/src/features/common/common.dart' as _i105;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i19;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i7;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i87;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i93;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i11;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i97;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i26;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i90;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i91;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i25;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i89;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i86;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i88;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i100;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i50;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i71;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i72;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i96;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i14;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i94;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i12;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i95;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i13;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i32;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i30;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i33;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i34;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i35;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i59;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i60;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i31;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i29;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i58;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i98;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i99;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i40;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i28;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i74;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i75;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i27;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i73;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i9;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i55;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i57;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i62;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i67;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i69;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i70;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i8;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i54;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i61;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i68;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i47;
import 'package:json_annotation/json_annotation.dart' as _i36;
import 'package:mapster/mapster.dart' as _i53;
import 'package:mediator/mediator.dart' as _i56;

import '../../../env/env_module.dart' as _i107;
import '../third_party/mapster_module.dart' as _i108;
import '../third_party/mediator_module.dart' as _i109;

const String _dev = 'dev';

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
  gh.singleton<_i4.CommentPostCommandValidator>(
      _i4.CommentPostCommandValidator());
  gh.singleton<_i5.CreatePostCommandValidator>(
      _i5.CreatePostCommandValidator());
  gh.singleton<_i6.DateTimeProvider>(_i7.ProdDateTimeProvider());
  gh.singleton<_i8.EndUserRepository>(
    _i9.DevEndUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i10.GetDevicesQueryValidator>(_i10.GetDevicesQueryValidator());
  gh.singleton<_i11.GetFeedQueryValidator>(_i11.GetFeedQueryValidator());
  gh.singleton<_i12.GetPostCommentQueryValidator>(
      _i12.GetPostCommentQueryValidator());
  gh.singleton<_i13.GetPostCommentsQueryValidator>(
      _i13.GetPostCommentsQueryValidator());
  gh.singleton<_i14.GetPostQueryValidator>(_i14.GetPostQueryValidator());
  gh.singleton<_i15.GetTagsQueryValidator>(_i15.GetTagsQueryValidator());
  gh.singleton<_i16.GetUserByIDQueryValidator>(
      _i16.GetUserByIDQueryValidator());
  gh.singleton<_i17.GetUserByNickQueryValidator>(
      _i17.GetUserByNickQueryValidator());
  gh.singleton<_i18.HashService>(_i19.ProdHashService());
  gh.singleton<
          _i20.JsonConverter<_i21.RefreshTokenRequest, Map<String, Object?>>>(
      _i22.RefreshTokenRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.LogOutRequest, Map<String, Object?>>>(
      _i23.LogOutRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i21.LogInRequest, Map<String, Object?>>>(
      _i24.LogInRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i25.GetFeedRequest, Map<String, Object?>>>(
      _i26.GetFeedRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i27.GetUserByNickRequest, Map<String, Object?>>>(
      _i28.GetUserByNickRequestJsonConverter());
  gh.singleton<
      _i20.JsonConverter<_i29.GetPostCommentsRequest,
          Map<String, Object?>>>(_i30.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i31.CommentPostRequest, Map<String, Object?>>>(
      _i32.CommentPostRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i29.GetPostRequest, Map<String, Object?>>>(
      _i33.GetPostRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i29.LikePostRequest, Map<String, Object?>>>(
      _i34.LikePostRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i29.UnlikePostRequest, Map<String, Object?>>>(
      _i35.UnlikePostRequestJsonConverter());
  gh.singleton<_i36.JsonConverter<_i21.RegisterRequest, Map<String, Object?>>>(
      _i37.RegisterRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i38.GetDevicesRequest, Map<String, Object?>>>(
      _i39.GetDevicesRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i27.GetUserByIDRequest, Map<String, Object?>>>(
      _i40.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i38.RemoveDeviceRequest, Map<String, Object?>>>(
      _i41.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i21.VerifyTokenRequest, Map<String, Object?>>>(
      _i42.VerifyTokenRequestJsonConverter());
  gh.singleton<_i20.JsonConverter<_i25.GetTagsRequest, Map<String, Object?>>>(
      _i43.GetTagsRequestJsonConverter());
  gh.singleton<
      _i20.JsonConverter<_i38.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i44.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i29.GetPostCommentRequest, Map<String, Object?>>>(
      _i45.GetPostCommentRequestJsonConverter());
  gh.singleton<
          _i20.JsonConverter<_i29.CreatePostRequest, Map<String, Object?>>>(
      _i46.CreatePostRequestJsonConverter());
  gh.singleton<_i47.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i48.JwtTokenService>(
      _i49.ProdJwtTokenService(gh<_i47.JwtSettings>()));
  gh.singleton<_i50.LikePostCommandValidator>(_i50.LikePostCommandValidator());
  gh.singleton<_i51.LogInQueryValidator>(_i51.LogInQueryValidator());
  gh.singleton<_i52.LogOutCommandValidator>(_i52.LogOutCommandValidator());
  gh.singleton<_i53.Mapster>(mapsterModule.mapster);
  gh.singleton<_i54.MediaRepository>(
    _i55.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i56.Mediator>(mediatorModule.mediator);
  gh.singleton<_i8.PasswordHashRepository>(
    _i57.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i58.PostController>(() => _i58.PostController(
        mediator: gh<_i56.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i59.PostMapsterRegistrar>(
      _i59.PostMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i60.PostMediatorRegistrar>(
      _i60.PostMediatorRegistrar(gh<_i56.Mediator>())..register());
  gh.singleton<_i61.PostRepository>(
    _i62.DevPostRepository(
      dateTimeProvider: gh<_i63.DateTimeProvider>(),
      mediaRepository: gh<_i54.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i64.RefreshTokenCommandValidator>(
      _i64.RefreshTokenCommandValidator());
  gh.singleton<_i65.RegisterCommandValidator>(_i65.RegisterCommandValidator());
  gh.singleton<_i66.RemoveDeviceCommandValidator>(
      _i66.RemoveDeviceCommandValidator());
  gh.singleton<_i8.StaffUserRepository>(
    _i67.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i68.TagRepository>(
    _i69.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.TokenRepository>(
    _i70.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i71.UnlikePostCommandHandler>(_i71.UnlikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i72.UnlikePostCommandValidator>(
      _i72.UnlikePostCommandValidator());
  gh.factory<_i73.UserController>(() => _i73.UserController(
        mediator: gh<_i56.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i74.UserMapsterRegistrar>(
      _i74.UserMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i75.UserMediatorRegistrar>(
      _i75.UserMediatorRegistrar(gh<_i56.Mediator>())..register());
  gh.singleton<_i76.VerifyTokenQueryHandler>(_i76.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i77.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i78.VerifyTokenQueryValidator>(
      _i78.VerifyTokenQueryValidator());
  gh.factory<_i79.AccountController>(() => _i79.AccountController(
        mediator: gh<_i56.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i80.AccountMapsterRegistrar>(
      _i80.AccountMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i81.AccountMediatorRegistrar>(
      _i81.AccountMediatorRegistrar(gh<_i56.Mediator>())..register());
  gh.factory<_i82.AuthController>(() => _i82.AuthController(
        mediator: gh<_i56.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i83.AuthMapsterRegistrar>(
      _i83.AuthMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i84.AuthMediatorRegistrar>(
      _i84.AuthMediatorRegistrar(gh<_i56.Mediator>())..register());
  gh.singleton<_i85.ChangePersonalInfoCommandHandler>(
      _i85.ChangePersonalInfoCommandHandler(
          endUserRepository: gh<_i8.EndUserRepository>()));
  gh.singleton<_i86.CommentPostCommandHandler>(_i86.CommentPostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i87.CommonMapsterRegistrar>(
      _i87.CommonMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i88.CreatePostCommandHandler>(_i88.CreatePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.factory<_i89.FeedController>(() => _i89.FeedController(
        mediator: gh<_i56.Mediator>(),
        mapster: gh<_i53.Mapster>(),
      ));
  gh.singleton<_i90.FeedMapsterRegistrar>(
      _i90.FeedMapsterRegistrar(gh<_i53.Mapster>())..register());
  gh.singleton<_i91.FeedMediatorRegistrar>(
      _i91.FeedMediatorRegistrar(gh<_i56.Mediator>())..register());
  gh.singleton<_i92.GetDevicesQueryHandler>(_i92.GetDevicesQueryHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i93.GetFeedQueryHandler>(_i93.GetFeedQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i94.GetPostCommentQueryHandler>(_i94.GetPostCommentQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i95.GetPostCommentsQueryHandler>(
      _i95.GetPostCommentsQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i96.GetPostQueryHandler>(_i96.GetPostQueryHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i97.GetTagsQueryHandler>(
      _i97.GetTagsQueryHandler(tagRepository: gh<_i8.TagRepository>()));
  gh.singleton<_i98.GetUserByIDQueryHandler>(_i98.GetUserByIDQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i99.GetUserByNickQueryHandler>(_i99.GetUserByNickQueryHandler(
    endUserRepository: gh<_i8.EndUserRepository>(),
    staffUserRepository: gh<_i8.StaffUserRepository>(),
  ));
  gh.singleton<_i100.LikePostCommandHandler>(_i100.LikePostCommandHandler(
    postRepository: gh<_i8.PostRepository>(),
    mediaRepository: gh<_i8.MediaRepository>(),
    mapster: gh<_i53.Mapster>(),
  ));
  gh.singleton<_i101.LogInQueryHandler>(_i101.LogInQueryHandler(
    jwtTokenService: gh<_i77.JwtTokenService>(),
    hashService: gh<_i18.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i63.DateTimeProvider>(),
  ));
  gh.singleton<_i102.LogOutCommandHandler>(_i102.LogOutCommandHandler(
    jwtTokenService: gh<_i77.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
  ));
  gh.singleton<_i103.RefreshTokenCommandHandler>(
      _i103.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i77.JwtTokenService>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    dateTimeProvider: gh<_i63.DateTimeProvider>(),
  ));
  gh.singleton<_i104.RegisterCommandHandler>(_i104.RegisterCommandHandler(
    jwtTokenService: gh<_i77.JwtTokenService>(),
    hashService: gh<_i105.HashService>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    tokenRepository: gh<_i8.TokenRepository>(),
    dateTimeProvider: gh<_i105.DateTimeProvider>(),
  ));
  gh.singleton<_i106.RemoveDeviceCommandHandler>(
      _i106.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i8.TokenRepository>(),
    passwordHashRepository: gh<_i8.PasswordHashRepository>(),
    endUserRepository: gh<_i8.EndUserRepository>(),
    hashService: gh<_i6.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i107.EnvModule {}

class _$MapsterModule extends _i108.MapsterModule {}

class _$MediatorModule extends _i109.MediatorModule {}
