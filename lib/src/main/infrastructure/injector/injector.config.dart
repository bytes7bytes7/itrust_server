// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i39;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i143;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i186;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i108;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i158;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i137;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i138;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i43;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i136;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i88;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i180;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i94;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i183;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i106;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i184;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i107;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i168;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i179;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i93;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i133;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i135;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i134;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i89;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i80;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i79;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i58;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i140;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i141;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i50;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i139;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i115;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_handler.dart'
    as _i151;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_validator.dart'
    as _i6;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_handler.dart'
    as _i157;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_handler.dart'
    as _i178;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_validator.dart'
    as _i92;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_monologue_chat_request_json_converter.dart'
    as _i61;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chats_request_json_converter.dart'
    as _i48;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_chats_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mapster_registrar.dart'
    as _i145;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mediator_registrar.dart'
    as _i146;
import 'package:itrust_server/src/features/chat/presentation/contracts/contracts.dart'
    as _i47;
import 'package:itrust_server/src/features/chat/presentation/controllers/chat_controller.dart'
    as _i144;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i8;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i12;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i37;
import 'package:itrust_server/src/features/common/common.dart' as _i185;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i38;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i9;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i150;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i159;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i171;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i32;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i76;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i53;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i154;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i155;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i52;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i153;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_handler.dart'
    as _i162;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/media/infrastructure/json_converters/get_media_request_json_converter.dart'
    as _i75;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mapster_registrar.dart'
    as _i96;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mediator_registrar.dart'
    as _i182;
import 'package:itrust_server/src/features/media/presentation/contracts/contracts.dart'
    as _i74;
import 'package:itrust_server/src/features/media/presentation/controllers/media_controller.dart'
    as _i181;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i149;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i152;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i176;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i90;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i177;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i91;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i124;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i125;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i126;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i127;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i167;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i165;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i166;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_handler.dart'
    as _i175;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_validator.dart'
    as _i36;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i63;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i65;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i67;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i66;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i68;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_user_posts_request_json_converter.dart'
    as _i69;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i70;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i71;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i72;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i73;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i102;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i103;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i62;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i64;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i101;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_handler.dart'
    as _i142;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_handler.dart'
    as _i109;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_validator.dart'
    as _i110;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_handler.dart'
    as _i111;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_validator.dart'
    as _i112;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_handler.dart'
    as _i113;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_validator.dart'
    as _i114;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i118;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i119;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_handler.dart'
    as _i128;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_validator.dart'
    as _i129;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_handler.dart'
    as _i156;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_validator.dart'
    as _i15;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_handler.dart'
    as _i19;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_validator.dart'
    as _i20;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i160;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i21;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_handler.dart'
    as _i161;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_handler.dart'
    as _i163;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_handler.dart'
    as _i164;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_handler.dart'
    as _i169;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_handler.dart'
    as _i170;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_validator.dart'
    as _i31;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i172;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i33;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i173;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i34;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i174;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i35;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_for_user_request_json_converter.dart'
    as _i78;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_friend_bids_amount_request_json_converter.dart'
    as _i82;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_people_amount_request_json_converter.dart'
    as _i84;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i41;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i42;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_users_request_json_converter.dart'
    as _i86;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/respond_friend_bid_request_json_converter.dart'
    as _i60;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/user_action_request_json_converter.dart'
    as _i54;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i131;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i132;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i40;
import 'package:itrust_server/src/features/user/presentation/contracts/get_for_user_request/get_for_user_request.dart'
    as _i77;
import 'package:itrust_server/src/features/user/presentation/contracts/get_friend_bids_amount_request/get_friend_bids_amount_request.dart'
    as _i81;
import 'package:itrust_server/src/features/user/presentation/contracts/get_people_amount_request/get_people_amount_request.dart'
    as _i83;
import 'package:itrust_server/src/features/user/presentation/contracts/get_users_request/get_users_request.dart'
    as _i85;
import 'package:itrust_server/src/features/user/presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart'
    as _i59;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i130;
import 'package:itrust_server/src/repositories/implementations/chat_repository.dart'
    as _i148;
import 'package:itrust_server/src/repositories/implementations/end_user_activity_repository.dart'
    as _i11;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i14;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i98;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i100;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i105;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i117;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i120;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i122;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i123;
import 'package:itrust_server/src/repositories/interfaces/chat_repository.dart'
    as _i147;
import 'package:itrust_server/src/repositories/interfaces/end_user_activity_repository.dart'
    as _i10;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i13;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i97;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i104;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i116;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i121;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i87;
import 'package:json_annotation/json_annotation.dart' as _i56;
import 'package:mapster/mapster.dart' as _i95;
import 'package:mediator/mediator.dart' as _i99;

import '../../../env/env_module.dart' as _i187;
import '../third_party/mapster_module.dart' as _i188;
import '../third_party/mediator_module.dart' as _i189;

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
  gh.singleton<_i3.CancelFriendBidCommandValidator>(
      _i3.CancelFriendBidCommandValidator());
  gh.singleton<_i4.ChangePersonalInfoCommandValidator>(
      _i4.ChangePersonalInfoCommandValidator());
  gh.singleton<_i5.CommentPostCommandValidator>(
      _i5.CommentPostCommandValidator());
  gh.singleton<_i6.CreateMonologueChatCommandValidator>(
      _i6.CreateMonologueChatCommandValidator());
  gh.singleton<_i7.CreatePostCommandValidator>(
      _i7.CreatePostCommandValidator());
  gh.singleton<_i8.DateTimeProvider>(_i9.ProdDateTimeProvider());
  gh.singleton<_i10.EndUserActivityRepository>(
    _i11.DevEndUserActivityRepository(
        dateTimeProvider: gh<_i12.DateTimeProvider>()),
    registerFor: {_dev},
  );
  gh.singleton<_i13.EndUserRepository>(
    _i14.DevEndUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i15.GetAllUsersQueryValidator>(
      _i15.GetAllUsersQueryValidator());
  gh.singleton<_i16.GetChatsQueryValidator>(_i16.GetChatsQueryValidator());
  gh.singleton<_i17.GetDevicesQueryValidator>(_i17.GetDevicesQueryValidator());
  gh.singleton<_i18.GetFeedQueryValidator>(_i18.GetFeedQueryValidator());
  gh.singleton<_i19.GetFriendBidsAmountQueryHandler>(
      _i19.GetFriendBidsAmountQueryHandler(
          endUserRepository: gh<_i13.EndUserRepository>()));
  gh.singleton<_i20.GetFriendBidsAmountQueryValidator>(
      _i20.GetFriendBidsAmountQueryValidator());
  gh.singleton<_i21.GetFriendsQueryValidator>(_i21.GetFriendsQueryValidator());
  gh.singleton<_i22.GetInboxFriendBidsQueryValidator>(
      _i22.GetInboxFriendBidsQueryValidator());
  gh.singleton<_i23.GetMediaQueryValidator>(_i23.GetMediaQueryValidator());
  gh.singleton<_i24.GetOutboxFriendBidsQueryValidator>(
      _i24.GetOutboxFriendBidsQueryValidator());
  gh.singleton<_i25.GetPeopleAmountQueryValidator>(
      _i25.GetPeopleAmountQueryValidator());
  gh.singleton<_i26.GetPostCommentQueryValidator>(
      _i26.GetPostCommentQueryValidator());
  gh.singleton<_i27.GetPostCommentsQueryValidator>(
      _i27.GetPostCommentsQueryValidator());
  gh.singleton<_i28.GetPostQueryValidator>(_i28.GetPostQueryValidator());
  gh.singleton<_i29.GetRulesQueryValidator>(_i29.GetRulesQueryValidator());
  gh.singleton<_i30.GetSubscribersQueryValidator>(
      _i30.GetSubscribersQueryValidator());
  gh.singleton<_i31.GetSubscriptionsQueryValidator>(
      _i31.GetSubscriptionsQueryValidator());
  gh.singleton<_i32.GetTagsQueryValidator>(_i32.GetTagsQueryValidator());
  gh.singleton<_i33.GetUserByIDQueryValidator>(
      _i33.GetUserByIDQueryValidator());
  gh.singleton<_i34.GetUserByNickQueryValidator>(
      _i34.GetUserByNickQueryValidator());
  gh.singleton<_i35.GetUserInfoQueryValidator>(
      _i35.GetUserInfoQueryValidator());
  gh.singleton<_i36.GetUserPostsQueryValidator>(
      _i36.GetUserPostsQueryValidator());
  gh.singleton<_i37.HashService>(_i38.ProdHashService());
  gh.singleton<
          _i39.JsonConverter<_i40.GetUserByIDRequest, Map<String, Object?>>>(
      _i41.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i40.GetUserByNickRequest, Map<String, Object?>>>(
      _i42.GetUserByNickRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i43.RemoveDeviceRequest, Map<String, Object?>>>(
      _i44.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i43.GetDevicesRequest, Map<String, Object?>>>(
      _i45.GetDevicesRequestJsonConverter());
  gh.singleton<
      _i39.JsonConverter<_i43.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i46.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i47.GetChatsRequest, Map<String, Object?>>>(
      _i48.GetChatsRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i47.ListenChatsRequest, Map<String, Object?>>>(
      _i49.ListenChatsRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i50.GetRulesRequest, Map<String, Object?>>>(
      _i51.GetRulesRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i52.GetTagsRequest, Map<String, Object?>>>(
      _i53.GetTagsRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i40.UserActionRequest, Map<String, Object?>>>(
      _i54.UserActionRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i50.VerifyTokenRequest, Map<String, Object?>>>(
      _i55.VerifyTokenRequestJsonConverter());
  gh.singleton<_i56.JsonConverter<_i50.RegisterRequest, Map<String, Object?>>>(
      _i57.RegisterRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i50.RefreshTokenRequest, Map<String, Object?>>>(
      _i58.RefreshTokenRequestJsonConverter());
  gh.singleton<
      _i39.JsonConverter<_i59.RespondFriendBidRequest,
          Map<String, Object?>>>(_i60.RespondFriendBidRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i47.CreateMonologueChatRequest,
              Map<String, Object?>>>(
      _i61.CreateMonologueChatRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i62.CommentPostRequest, Map<String, Object?>>>(
      _i63.CommentPostRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i64.CreatePostRequest, Map<String, Object?>>>(
      _i65.CreatePostRequestJsonConverter());
  gh.singleton<
      _i39.JsonConverter<_i64.GetPostCommentsRequest,
          Map<String, Object?>>>(_i66.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i64.GetPostCommentRequest, Map<String, Object?>>>(
      _i67.GetPostCommentRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i64.GetPostRequest, Map<String, Object?>>>(
      _i68.GetPostRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i64.GetUserPostsRequest, Map<String, Object?>>>(
      _i69.GetUserPostsRequestJsonConverter());
  gh.singleton<
      _i39.JsonConverter<_i64.LikePostCommentRequest,
          Map<String, Object?>>>(_i70.LikePostCommentRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i64.LikePostRequest, Map<String, Object?>>>(
      _i71.LikePostRequestJsonConverter());
  gh.singleton<
      _i39.JsonConverter<_i64.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i72.UnlikePostCommentRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i64.UnlikePostRequest, Map<String, Object?>>>(
      _i73.UnlikePostRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i74.GetMediaRequest, Map<String, Object?>>>(
      _i75.GetMediaRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i52.GetFeedRequest, Map<String, Object?>>>(
      _i76.GetFeedRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i77.GetForUserRequest, Map<String, Object?>>>(
      _i78.GetForUserRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i50.LogOutRequest, Map<String, Object?>>>(
      _i79.LogOutRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i50.LogInRequest, Map<String, Object?>>>(
      _i80.LogInRequestJsonConverter());
  gh.singleton<
          _i39.JsonConverter<_i81.GetFriendBidsAmountRequest,
              Map<String, Object?>>>(
      _i82.GetFriendBidsAmountRequestJsonConverter());
  gh.singleton<
      _i39.JsonConverter<_i83.GetPeopleAmountRequest,
          Map<String, Object?>>>(_i84.GetPeopleAmountRequestJsonConverter());
  gh.singleton<_i39.JsonConverter<_i85.GetUsersRequest, Map<String, Object?>>>(
      _i86.GetUsersRequestJsonConverter());
  gh.singleton<_i87.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i88.JwtTokenService>(
      _i89.ProdJwtTokenService(gh<_i87.JwtSettings>()));
  gh.singleton<_i90.LikePostCommandValidator>(_i90.LikePostCommandValidator());
  gh.singleton<_i91.LikePostCommentCommandValidator>(
      _i91.LikePostCommentCommandValidator());
  gh.singleton<_i92.ListenChatsQueryValidator>(
      _i92.ListenChatsQueryValidator());
  gh.singleton<_i93.LogInQueryValidator>(_i93.LogInQueryValidator());
  gh.singleton<_i94.LogOutCommandValidator>(_i94.LogOutCommandValidator());
  gh.singleton<_i95.Mapster>(mapsterModule.mapster);
  gh.singleton<_i96.MediaMapsterRegistrar>(
      _i96.MediaMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i97.MediaRepository>(
    _i98.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i99.Mediator>(mediatorModule.mediator);
  gh.singleton<_i13.PasswordHashRepository>(
    _i100.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i101.PostController>(() => _i101.PostController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i102.PostMapsterRegistrar>(
      _i102.PostMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i103.PostMediatorRegistrar>(
      _i103.PostMediatorRegistrar(gh<_i99.Mediator>())..register());
  gh.singleton<_i104.PostRepository>(
    _i105.DevPostRepository(
      dateTimeProvider: gh<_i12.DateTimeProvider>(),
      mediaRepository: gh<_i97.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i106.RefreshTokenCommandValidator>(
      _i106.RefreshTokenCommandValidator());
  gh.singleton<_i107.RegisterCommandValidator>(
      _i107.RegisterCommandValidator());
  gh.singleton<_i108.RemoveDeviceCommandValidator>(
      _i108.RemoveDeviceCommandValidator());
  gh.singleton<_i109.RemoveFriendCommandHandler>(
      _i109.RemoveFriendCommandHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i110.RemoveFriendCommandValidator>(
      _i110.RemoveFriendCommandValidator());
  gh.singleton<_i111.RemoveSubscriberCommandHandler>(
      _i111.RemoveSubscriberCommandHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i112.RemoveSubscriberCommandValidator>(
      _i112.RemoveSubscriberCommandValidator());
  gh.singleton<_i113.RespondFriendBidCommandHandler>(
      _i113.RespondFriendBidCommandHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i114.RespondFriendBidCommandValidator>(
      _i114.RespondFriendBidCommandValidator());
  gh.factory<_i115.RulesController>(() => _i115.RulesController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i116.RulesRepository>(
    _i117.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i118.SendFriendBidCommandHandler>(
      _i118.SendFriendBidCommandHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i119.SendFriendBidCommandValidator>(
      _i119.SendFriendBidCommandValidator());
  gh.singleton<_i13.StaffUserRepository>(
    _i120.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i121.TagRepository>(
    _i122.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i13.TokenRepository>(
    _i123.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i124.UnlikePostCommandHandler>(_i124.UnlikePostCommandHandler(
    postRepository: gh<_i13.PostRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i125.UnlikePostCommandValidator>(
      _i125.UnlikePostCommandValidator());
  gh.singleton<_i126.UnlikePostCommentCommandHandler>(
      _i126.UnlikePostCommentCommandHandler(
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i127.UnlikePostCommentCommandValidator>(
      _i127.UnlikePostCommentCommandValidator());
  gh.singleton<_i128.UnsubscribeCommandHandler>(_i128.UnsubscribeCommandHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i129.UnsubscribeCommandValidator>(
      _i129.UnsubscribeCommandValidator());
  gh.factory<_i130.UserController>(() => _i130.UserController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i131.UserMapsterRegistrar>(
      _i131.UserMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i132.UserMediatorRegistrar>(
      _i132.UserMediatorRegistrar(gh<_i99.Mediator>())..register());
  gh.singleton<_i133.VerifyTokenQueryHandler>(_i133.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i134.JwtTokenService>(),
    tokenRepository: gh<_i13.TokenRepository>(),
  ));
  gh.singleton<_i135.VerifyTokenQueryValidator>(
      _i135.VerifyTokenQueryValidator());
  gh.factory<_i136.AccountController>(() => _i136.AccountController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i137.AccountMapsterRegistrar>(
      _i137.AccountMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i138.AccountMediatorRegistrar>(
      _i138.AccountMediatorRegistrar(gh<_i99.Mediator>())..register());
  gh.factory<_i139.AuthController>(() => _i139.AuthController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i140.AuthMapsterRegistrar>(
      _i140.AuthMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i141.AuthMediatorRegistrar>(
      _i141.AuthMediatorRegistrar(gh<_i99.Mediator>())..register());
  gh.singleton<_i142.CancelFriendBidCommandHandler>(
      _i142.CancelFriendBidCommandHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i143.ChangePersonalInfoCommandHandler>(
      _i143.ChangePersonalInfoCommandHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.factory<_i144.ChatController>(() => _i144.ChatController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i145.ChatMapsterRegistrar>(
      _i145.ChatMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i146.ChatMediatorRegistrar>(
      _i146.ChatMediatorRegistrar(gh<_i99.Mediator>())..register());
  gh.singleton<_i147.ChatRepository>(
    _i148.DevChatRepository(
      mediaRepository: gh<_i97.MediaRepository>(),
      dateTimeProvider: gh<_i12.DateTimeProvider>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i149.CommentPostCommandHandler>(_i149.CommentPostCommandHandler(
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i150.CommonMapsterRegistrar>(
      _i150.CommonMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i151.CreateMonologueChatCommandHandler>(
      _i151.CreateMonologueChatCommandHandler(
    chatRepository: gh<_i13.ChatRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i152.CreatePostCommandHandler>(_i152.CreatePostCommandHandler(
    postRepository: gh<_i13.PostRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    endUserRepository: gh<_i13.EndUserRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.factory<_i153.FeedController>(() => _i153.FeedController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i154.FeedMapsterRegistrar>(
      _i154.FeedMapsterRegistrar(gh<_i95.Mapster>())..register());
  gh.singleton<_i155.FeedMediatorRegistrar>(
      _i155.FeedMediatorRegistrar(gh<_i99.Mediator>())..register());
  gh.singleton<_i156.GetAllUsersQueryHandler>(_i156.GetAllUsersQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    staffUserRepository: gh<_i13.StaffUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i157.GetChatsQueryHandler>(_i157.GetChatsQueryHandler(
    chatRepository: gh<_i13.ChatRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i158.GetDevicesQueryHandler>(_i158.GetDevicesQueryHandler(
    tokenRepository: gh<_i13.TokenRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i159.GetFeedQueryHandler>(_i159.GetFeedQueryHandler(
    postRepository: gh<_i13.PostRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i160.GetFriendsQueryHandler>(_i160.GetFriendsQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i161.GetInboxFriendBidsQueryHandler>(
      _i161.GetInboxFriendBidsQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i162.GetMediaQueryHandler>(
      _i162.GetMediaQueryHandler(mediaRepository: gh<_i13.MediaRepository>()));
  gh.singleton<_i163.GetOutboxFriendBidsQueryHandler>(
      _i163.GetOutboxFriendBidsQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i164.GetPeopleAmountQueryHandler>(
      _i164.GetPeopleAmountQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    staffUserRepository: gh<_i13.StaffUserRepository>(),
  ));
  gh.singleton<_i165.GetPostCommentQueryHandler>(
      _i165.GetPostCommentQueryHandler(
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i166.GetPostCommentsQueryHandler>(
      _i166.GetPostCommentsQueryHandler(
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i167.GetPostQueryHandler>(_i167.GetPostQueryHandler(
    postRepository: gh<_i13.PostRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i168.GetRulesQueryHandler>(
      _i168.GetRulesQueryHandler(rulesRepository: gh<_i13.RulesRepository>()));
  gh.singleton<_i169.GetSubscribersQueryHandler>(
      _i169.GetSubscribersQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i170.GetSubscriptionsQueryHandler>(
      _i170.GetSubscriptionsQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i171.GetTagsQueryHandler>(
      _i171.GetTagsQueryHandler(tagRepository: gh<_i13.TagRepository>()));
  gh.singleton<_i172.GetUserByIDQueryHandler>(_i172.GetUserByIDQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    staffUserRepository: gh<_i13.StaffUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i173.GetUserByNickQueryHandler>(_i173.GetUserByNickQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    staffUserRepository: gh<_i13.StaffUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i174.GetUserInfoQueryHandler>(_i174.GetUserInfoQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    staffUserRepository: gh<_i13.StaffUserRepository>(),
    endUserActivityRepository: gh<_i13.EndUserActivityRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i175.GetUserPostsQueryHandler>(_i175.GetUserPostsQueryHandler(
    endUserRepository: gh<_i13.EndUserRepository>(),
    postRepository: gh<_i13.PostRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i176.LikePostCommandHandler>(_i176.LikePostCommandHandler(
    postRepository: gh<_i13.PostRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i177.LikePostCommentCommandHandler>(
      _i177.LikePostCommentCommandHandler(
    postRepository: gh<_i13.PostRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i178.ListenChatsQueryHandler>(_i178.ListenChatsQueryHandler(
    chatRepository: gh<_i13.ChatRepository>(),
    mediaRepository: gh<_i13.MediaRepository>(),
    mapster: gh<_i95.Mapster>(),
  ));
  gh.singleton<_i179.LogInQueryHandler>(_i179.LogInQueryHandler(
    jwtTokenService: gh<_i134.JwtTokenService>(),
    hashService: gh<_i37.HashService>(),
    endUserRepository: gh<_i13.EndUserRepository>(),
    passwordHashRepository: gh<_i13.PasswordHashRepository>(),
    tokenRepository: gh<_i13.TokenRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
  ));
  gh.singleton<_i180.LogOutCommandHandler>(_i180.LogOutCommandHandler(
    jwtTokenService: gh<_i134.JwtTokenService>(),
    tokenRepository: gh<_i13.TokenRepository>(),
  ));
  gh.factory<_i181.MediaController>(() => _i181.MediaController(
        mediator: gh<_i99.Mediator>(),
        mapster: gh<_i95.Mapster>(),
      ));
  gh.singleton<_i182.MediaMediatorRegistrar>(
      _i182.MediaMediatorRegistrar(gh<_i99.Mediator>())..register());
  gh.singleton<_i183.RefreshTokenCommandHandler>(
      _i183.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i134.JwtTokenService>(),
    tokenRepository: gh<_i13.TokenRepository>(),
    endUserRepository: gh<_i13.EndUserRepository>(),
    dateTimeProvider: gh<_i12.DateTimeProvider>(),
  ));
  gh.singleton<_i184.RegisterCommandHandler>(_i184.RegisterCommandHandler(
    jwtTokenService: gh<_i134.JwtTokenService>(),
    hashService: gh<_i185.HashService>(),
    endUserRepository: gh<_i13.EndUserRepository>(),
    passwordHashRepository: gh<_i13.PasswordHashRepository>(),
    tokenRepository: gh<_i13.TokenRepository>(),
    dateTimeProvider: gh<_i185.DateTimeProvider>(),
  ));
  gh.singleton<_i186.RemoveDeviceCommandHandler>(
      _i186.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i13.TokenRepository>(),
    passwordHashRepository: gh<_i13.PasswordHashRepository>(),
    endUserRepository: gh<_i13.EndUserRepository>(),
    hashService: gh<_i8.HashService>(),
  ));
  return getIt;
}

class _$EnvModule extends _i187.EnvModule {}

class _$MapsterModule extends _i188.MapsterModule {}

class _$MediatorModule extends _i189.MediatorModule {}
