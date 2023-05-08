// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i41;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i149;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i194;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i113;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i165;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i47;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i43;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i143;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i144;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i42;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i142;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i93;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i188;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i99;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i191;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i111;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i192;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i112;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i176;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i31;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i187;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i98;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i139;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i141;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i140;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i94;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i57;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i48;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i52;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i54;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i146;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i147;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i45;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i145;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i120;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_handler.dart'
    as _i157;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_validator.dart'
    as _i6;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_handler.dart'
    as _i158;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_handler.dart'
    as _i195;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_validator.dart'
    as _i125;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_handler.dart'
    as _i164;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_handler.dart'
    as _i170;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_handler.dart'
    as _i186;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_validator.dart'
    as _i97;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_group_chat_request_json_converter.dart'
    as _i70;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_monologue_chat_request_json_converter.dart'
    as _i85;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chats_request_json_converter.dart'
    as _i80;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_messages_request_json_converter.dart'
    as _i76;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_chats_request_json_converter.dart'
    as _i90;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/send_message_request_json_converter.dart'
    as _i56;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mapster_registrar.dart'
    as _i151;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mediator_registrar.dart'
    as _i152;
import 'package:itrust_server/src/features/chat/presentation/contracts/contracts.dart'
    as _i55;
import 'package:itrust_server/src/features/chat/presentation/controllers/chat_controller.dart'
    as _i150;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i9;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i13;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i39;
import 'package:itrust_server/src/features/common/common.dart' as _i193;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i40;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i10;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i156;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i166;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i179;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i34;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i91;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i89;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i161;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i162;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i88;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i160;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_handler.dart'
    as _i169;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/media/infrastructure/json_converters/get_media_request_json_converter.dart'
    as _i50;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mapster_registrar.dart'
    as _i101;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mediator_registrar.dart'
    as _i190;
import 'package:itrust_server/src/features/media/presentation/contracts/contracts.dart'
    as _i49;
import 'package:itrust_server/src/features/media/presentation/controllers/media_controller.dart'
    as _i189;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i155;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i159;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i8;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i184;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i95;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i185;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i96;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i130;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i131;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i132;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i133;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i175;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i173;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i174;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_handler.dart'
    as _i183;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_validator.dart'
    as _i38;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i59;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i61;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i63;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i62;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i64;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_user_posts_request_json_converter.dart'
    as _i65;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i66;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i67;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i68;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i69;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i107;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i108;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i58;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i60;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i106;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_handler.dart'
    as _i148;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_handler.dart'
    as _i114;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_validator.dart'
    as _i115;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_handler.dart'
    as _i116;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_validator.dart'
    as _i117;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_handler.dart'
    as _i118;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_validator.dart'
    as _i119;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i123;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i124;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_handler.dart'
    as _i134;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_validator.dart'
    as _i135;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_handler.dart'
    as _i163;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_handler.dart'
    as _i20;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_validator.dart'
    as _i21;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i167;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_handler.dart'
    as _i168;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_handler.dart'
    as _i171;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_handler.dart'
    as _i172;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_handler.dart'
    as _i177;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_validator.dart'
    as _i32;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_handler.dart'
    as _i178;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_validator.dart'
    as _i33;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i180;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i35;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i181;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i36;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i182;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i37;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_for_user_request_json_converter.dart'
    as _i84;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_friend_bids_amount_request_json_converter.dart'
    as _i82;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_people_amount_request_json_converter.dart'
    as _i87;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i77;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i75;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_users_request_json_converter.dart'
    as _i79;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/respond_friend_bid_request_json_converter.dart'
    as _i74;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/user_action_request_json_converter.dart'
    as _i72;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i137;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i138;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i71;
import 'package:itrust_server/src/features/user/presentation/contracts/get_for_user_request/get_for_user_request.dart'
    as _i83;
import 'package:itrust_server/src/features/user/presentation/contracts/get_friend_bids_amount_request/get_friend_bids_amount_request.dart'
    as _i81;
import 'package:itrust_server/src/features/user/presentation/contracts/get_people_amount_request/get_people_amount_request.dart'
    as _i86;
import 'package:itrust_server/src/features/user/presentation/contracts/get_users_request/get_users_request.dart'
    as _i78;
import 'package:itrust_server/src/features/user/presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart'
    as _i73;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i136;
import 'package:itrust_server/src/repositories/implementations/chat_repository.dart'
    as _i154;
import 'package:itrust_server/src/repositories/implementations/end_user_activity_repository.dart'
    as _i12;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i15;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i103;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i105;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i110;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i122;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i126;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i128;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i129;
import 'package:itrust_server/src/repositories/interfaces/chat_repository.dart'
    as _i153;
import 'package:itrust_server/src/repositories/interfaces/end_user_activity_repository.dart'
    as _i11;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i14;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i102;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i109;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i121;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i127;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i92;
import 'package:json_annotation/json_annotation.dart' as _i53;
import 'package:mapster/mapster.dart' as _i100;
import 'package:mediator/mediator.dart' as _i104;

import '../../../env/env_module.dart' as _i196;
import '../third_party/mapster_module.dart' as _i197;
import '../third_party/mediator_module.dart' as _i198;

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
  gh.singleton<_i6.CreateGroupChatCommandValidator>(
      _i6.CreateGroupChatCommandValidator());
  gh.singleton<_i7.CreateMonologueChatCommandValidator>(
      _i7.CreateMonologueChatCommandValidator());
  gh.singleton<_i8.CreatePostCommandValidator>(
      _i8.CreatePostCommandValidator());
  gh.singleton<_i9.DateTimeProvider>(_i10.ProdDateTimeProvider());
  gh.singleton<_i11.EndUserActivityRepository>(
    _i12.DevEndUserActivityRepository(
        dateTimeProvider: gh<_i13.DateTimeProvider>()),
    registerFor: {_dev},
  );
  gh.singleton<_i14.EndUserRepository>(
    _i15.DevEndUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i16.GetAllUsersQueryValidator>(
      _i16.GetAllUsersQueryValidator());
  gh.singleton<_i17.GetChatsQueryValidator>(_i17.GetChatsQueryValidator());
  gh.singleton<_i18.GetDevicesQueryValidator>(_i18.GetDevicesQueryValidator());
  gh.singleton<_i19.GetFeedQueryValidator>(_i19.GetFeedQueryValidator());
  gh.singleton<_i20.GetFriendBidsAmountQueryHandler>(
      _i20.GetFriendBidsAmountQueryHandler(
          endUserRepository: gh<_i14.EndUserRepository>()));
  gh.singleton<_i21.GetFriendBidsAmountQueryValidator>(
      _i21.GetFriendBidsAmountQueryValidator());
  gh.singleton<_i22.GetFriendsQueryValidator>(_i22.GetFriendsQueryValidator());
  gh.singleton<_i23.GetInboxFriendBidsQueryValidator>(
      _i23.GetInboxFriendBidsQueryValidator());
  gh.singleton<_i24.GetMediaQueryValidator>(_i24.GetMediaQueryValidator());
  gh.singleton<_i25.GetMessagesQueryValidator>(
      _i25.GetMessagesQueryValidator());
  gh.singleton<_i26.GetOutboxFriendBidsQueryValidator>(
      _i26.GetOutboxFriendBidsQueryValidator());
  gh.singleton<_i27.GetPeopleAmountQueryValidator>(
      _i27.GetPeopleAmountQueryValidator());
  gh.singleton<_i28.GetPostCommentQueryValidator>(
      _i28.GetPostCommentQueryValidator());
  gh.singleton<_i29.GetPostCommentsQueryValidator>(
      _i29.GetPostCommentsQueryValidator());
  gh.singleton<_i30.GetPostQueryValidator>(_i30.GetPostQueryValidator());
  gh.singleton<_i31.GetRulesQueryValidator>(_i31.GetRulesQueryValidator());
  gh.singleton<_i32.GetSubscribersQueryValidator>(
      _i32.GetSubscribersQueryValidator());
  gh.singleton<_i33.GetSubscriptionsQueryValidator>(
      _i33.GetSubscriptionsQueryValidator());
  gh.singleton<_i34.GetTagsQueryValidator>(_i34.GetTagsQueryValidator());
  gh.singleton<_i35.GetUserByIDQueryValidator>(
      _i35.GetUserByIDQueryValidator());
  gh.singleton<_i36.GetUserByNickQueryValidator>(
      _i36.GetUserByNickQueryValidator());
  gh.singleton<_i37.GetUserInfoQueryValidator>(
      _i37.GetUserInfoQueryValidator());
  gh.singleton<_i38.GetUserPostsQueryValidator>(
      _i38.GetUserPostsQueryValidator());
  gh.singleton<_i39.HashService>(_i40.ProdHashService());
  gh.singleton<
          _i41.JsonConverter<_i42.RemoveDeviceRequest, Map<String, Object?>>>(
      _i43.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i42.GetDevicesRequest, Map<String, Object?>>>(
      _i44.GetDevicesRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i45.VerifyTokenRequest, Map<String, Object?>>>(
      _i46.VerifyTokenRequestJsonConverter());
  gh.singleton<
      _i41.JsonConverter<_i42.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i47.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i45.LogInRequest, Map<String, Object?>>>(
      _i48.LogInRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i49.GetMediaRequest, Map<String, Object?>>>(
      _i50.GetMediaRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i45.LogOutRequest, Map<String, Object?>>>(
      _i51.LogOutRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i45.RefreshTokenRequest, Map<String, Object?>>>(
      _i52.RefreshTokenRequestJsonConverter());
  gh.singleton<_i53.JsonConverter<_i45.RegisterRequest, Map<String, Object?>>>(
      _i54.RegisterRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i55.SendMessageRequest, Map<String, Object?>>>(
      _i56.SendMessageRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i45.GetRulesRequest, Map<String, Object?>>>(
      _i57.GetRulesRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i58.CommentPostRequest, Map<String, Object?>>>(
      _i59.CommentPostRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i60.CreatePostRequest, Map<String, Object?>>>(
      _i61.CreatePostRequestJsonConverter());
  gh.singleton<
      _i41.JsonConverter<_i60.GetPostCommentsRequest,
          Map<String, Object?>>>(_i62.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i60.GetPostCommentRequest, Map<String, Object?>>>(
      _i63.GetPostCommentRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i60.GetPostRequest, Map<String, Object?>>>(
      _i64.GetPostRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i60.GetUserPostsRequest, Map<String, Object?>>>(
      _i65.GetUserPostsRequestJsonConverter());
  gh.singleton<
      _i41.JsonConverter<_i60.LikePostCommentRequest,
          Map<String, Object?>>>(_i66.LikePostCommentRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i60.LikePostRequest, Map<String, Object?>>>(
      _i67.LikePostRequestJsonConverter());
  gh.singleton<
      _i41.JsonConverter<_i60.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i68.UnlikePostCommentRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i60.UnlikePostRequest, Map<String, Object?>>>(
      _i69.UnlikePostRequestJsonConverter());
  gh.singleton<
      _i41.JsonConverter<_i55.CreateGroupChatRequest,
          Map<String, Object?>>>(_i70.CreateGroupChatRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i71.UserActionRequest, Map<String, Object?>>>(
      _i72.UserActionRequestJsonConverter());
  gh.singleton<
      _i41.JsonConverter<_i73.RespondFriendBidRequest,
          Map<String, Object?>>>(_i74.RespondFriendBidRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i71.GetUserByNickRequest, Map<String, Object?>>>(
      _i75.GetUserByNickRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i55.GetMessagesRequest, Map<String, Object?>>>(
      _i76.GetMessagesRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i71.GetUserByIDRequest, Map<String, Object?>>>(
      _i77.GetUserByIDRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i78.GetUsersRequest, Map<String, Object?>>>(
      _i79.GetUsersRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i55.GetChatsRequest, Map<String, Object?>>>(
      _i80.GetChatsRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i81.GetFriendBidsAmountRequest,
              Map<String, Object?>>>(
      _i82.GetFriendBidsAmountRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i83.GetForUserRequest, Map<String, Object?>>>(
      _i84.GetForUserRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i55.CreateMonologueChatRequest,
              Map<String, Object?>>>(
      _i85.CreateMonologueChatRequestJsonConverter());
  gh.singleton<
      _i41.JsonConverter<_i86.GetPeopleAmountRequest,
          Map<String, Object?>>>(_i87.GetPeopleAmountRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i88.GetTagsRequest, Map<String, Object?>>>(
      _i89.GetTagsRequestJsonConverter());
  gh.singleton<
          _i41.JsonConverter<_i55.ListenChatsRequest, Map<String, Object?>>>(
      _i90.ListenChatsRequestJsonConverter());
  gh.singleton<_i41.JsonConverter<_i88.GetFeedRequest, Map<String, Object?>>>(
      _i91.GetFeedRequestJsonConverter());
  gh.singleton<_i92.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i93.JwtTokenService>(
      _i94.ProdJwtTokenService(gh<_i92.JwtSettings>()));
  gh.singleton<_i95.LikePostCommandValidator>(_i95.LikePostCommandValidator());
  gh.singleton<_i96.LikePostCommentCommandValidator>(
      _i96.LikePostCommentCommandValidator());
  gh.singleton<_i97.ListenChatsQueryValidator>(
      _i97.ListenChatsQueryValidator());
  gh.singleton<_i98.LogInQueryValidator>(_i98.LogInQueryValidator());
  gh.singleton<_i99.LogOutCommandValidator>(_i99.LogOutCommandValidator());
  gh.singleton<_i100.Mapster>(mapsterModule.mapster);
  gh.singleton<_i101.MediaMapsterRegistrar>(
      _i101.MediaMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i102.MediaRepository>(
    _i103.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i104.Mediator>(mediatorModule.mediator);
  gh.singleton<_i14.PasswordHashRepository>(
    _i105.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i106.PostController>(() => _i106.PostController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i107.PostMapsterRegistrar>(
      _i107.PostMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i108.PostMediatorRegistrar>(
      _i108.PostMediatorRegistrar(gh<_i104.Mediator>())..register());
  gh.singleton<_i109.PostRepository>(
    _i110.DevPostRepository(
      dateTimeProvider: gh<_i13.DateTimeProvider>(),
      mediaRepository: gh<_i102.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i111.RefreshTokenCommandValidator>(
      _i111.RefreshTokenCommandValidator());
  gh.singleton<_i112.RegisterCommandValidator>(
      _i112.RegisterCommandValidator());
  gh.singleton<_i113.RemoveDeviceCommandValidator>(
      _i113.RemoveDeviceCommandValidator());
  gh.singleton<_i114.RemoveFriendCommandHandler>(
      _i114.RemoveFriendCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i115.RemoveFriendCommandValidator>(
      _i115.RemoveFriendCommandValidator());
  gh.singleton<_i116.RemoveSubscriberCommandHandler>(
      _i116.RemoveSubscriberCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i117.RemoveSubscriberCommandValidator>(
      _i117.RemoveSubscriberCommandValidator());
  gh.singleton<_i118.RespondFriendBidCommandHandler>(
      _i118.RespondFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i119.RespondFriendBidCommandValidator>(
      _i119.RespondFriendBidCommandValidator());
  gh.factory<_i120.RulesController>(() => _i120.RulesController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i121.RulesRepository>(
    _i122.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i123.SendFriendBidCommandHandler>(
      _i123.SendFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i124.SendFriendBidCommandValidator>(
      _i124.SendFriendBidCommandValidator());
  gh.singleton<_i125.SendMessageCommandValidator>(
      _i125.SendMessageCommandValidator());
  gh.singleton<_i14.StaffUserRepository>(
    _i126.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i127.TagRepository>(
    _i128.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i14.TokenRepository>(
    _i129.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i130.UnlikePostCommandHandler>(_i130.UnlikePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i131.UnlikePostCommandValidator>(
      _i131.UnlikePostCommandValidator());
  gh.singleton<_i132.UnlikePostCommentCommandHandler>(
      _i132.UnlikePostCommentCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i133.UnlikePostCommentCommandValidator>(
      _i133.UnlikePostCommentCommandValidator());
  gh.singleton<_i134.UnsubscribeCommandHandler>(_i134.UnsubscribeCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i135.UnsubscribeCommandValidator>(
      _i135.UnsubscribeCommandValidator());
  gh.factory<_i136.UserController>(() => _i136.UserController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i137.UserMapsterRegistrar>(
      _i137.UserMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i138.UserMediatorRegistrar>(
      _i138.UserMediatorRegistrar(gh<_i104.Mediator>())..register());
  gh.singleton<_i139.VerifyTokenQueryHandler>(_i139.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i140.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
  ));
  gh.singleton<_i141.VerifyTokenQueryValidator>(
      _i141.VerifyTokenQueryValidator());
  gh.factory<_i142.AccountController>(() => _i142.AccountController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i143.AccountMapsterRegistrar>(
      _i143.AccountMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i144.AccountMediatorRegistrar>(
      _i144.AccountMediatorRegistrar(gh<_i104.Mediator>())..register());
  gh.factory<_i145.AuthController>(() => _i145.AuthController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i146.AuthMapsterRegistrar>(
      _i146.AuthMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i147.AuthMediatorRegistrar>(
      _i147.AuthMediatorRegistrar(gh<_i104.Mediator>())..register());
  gh.singleton<_i148.CancelFriendBidCommandHandler>(
      _i148.CancelFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i149.ChangePersonalInfoCommandHandler>(
      _i149.ChangePersonalInfoCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.factory<_i150.ChatController>(() => _i150.ChatController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i151.ChatMapsterRegistrar>(
      _i151.ChatMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i152.ChatMediatorRegistrar>(
      _i152.ChatMediatorRegistrar(gh<_i104.Mediator>())..register());
  gh.singleton<_i153.ChatRepository>(
    _i154.DevChatRepository(
      mediaRepository: gh<_i102.MediaRepository>(),
      dateTimeProvider: gh<_i13.DateTimeProvider>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i155.CommentPostCommandHandler>(_i155.CommentPostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i156.CommonMapsterRegistrar>(
      _i156.CommonMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i157.CreateGroupChatCommandHandler>(
      _i157.CreateGroupChatCommandHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i158.CreateMonologueChatCommandHandler>(
      _i158.CreateMonologueChatCommandHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i159.CreatePostCommandHandler>(_i159.CreatePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.factory<_i160.FeedController>(() => _i160.FeedController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i161.FeedMapsterRegistrar>(
      _i161.FeedMapsterRegistrar(gh<_i100.Mapster>())..register());
  gh.singleton<_i162.FeedMediatorRegistrar>(
      _i162.FeedMediatorRegistrar(gh<_i104.Mediator>())..register());
  gh.singleton<_i163.GetAllUsersQueryHandler>(_i163.GetAllUsersQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i164.GetChatsQueryHandler>(_i164.GetChatsQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i165.GetDevicesQueryHandler>(_i165.GetDevicesQueryHandler(
    tokenRepository: gh<_i14.TokenRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i166.GetFeedQueryHandler>(_i166.GetFeedQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i167.GetFriendsQueryHandler>(_i167.GetFriendsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i168.GetInboxFriendBidsQueryHandler>(
      _i168.GetInboxFriendBidsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i169.GetMediaQueryHandler>(
      _i169.GetMediaQueryHandler(mediaRepository: gh<_i14.MediaRepository>()));
  gh.singleton<_i170.GetMessagesQueryHandler>(_i170.GetMessagesQueryHandler(
    mapster: gh<_i100.Mapster>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    chatRepository: gh<_i14.ChatRepository>(),
  ));
  gh.singleton<_i171.GetOutboxFriendBidsQueryHandler>(
      _i171.GetOutboxFriendBidsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i172.GetPeopleAmountQueryHandler>(
      _i172.GetPeopleAmountQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
  ));
  gh.singleton<_i173.GetPostCommentQueryHandler>(
      _i173.GetPostCommentQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i174.GetPostCommentsQueryHandler>(
      _i174.GetPostCommentsQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i175.GetPostQueryHandler>(_i175.GetPostQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i176.GetRulesQueryHandler>(
      _i176.GetRulesQueryHandler(rulesRepository: gh<_i14.RulesRepository>()));
  gh.singleton<_i177.GetSubscribersQueryHandler>(
      _i177.GetSubscribersQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i178.GetSubscriptionsQueryHandler>(
      _i178.GetSubscriptionsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i179.GetTagsQueryHandler>(
      _i179.GetTagsQueryHandler(tagRepository: gh<_i14.TagRepository>()));
  gh.singleton<_i180.GetUserByIDQueryHandler>(_i180.GetUserByIDQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i181.GetUserByNickQueryHandler>(_i181.GetUserByNickQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i182.GetUserInfoQueryHandler>(_i182.GetUserInfoQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i183.GetUserPostsQueryHandler>(_i183.GetUserPostsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i184.LikePostCommandHandler>(_i184.LikePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i185.LikePostCommentCommandHandler>(
      _i185.LikePostCommentCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i186.ListenChatsQueryHandler>(_i186.ListenChatsQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  gh.singleton<_i187.LogInQueryHandler>(_i187.LogInQueryHandler(
    jwtTokenService: gh<_i140.JwtTokenService>(),
    hashService: gh<_i39.HashService>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    dateTimeProvider: gh<_i13.DateTimeProvider>(),
  ));
  gh.singleton<_i188.LogOutCommandHandler>(_i188.LogOutCommandHandler(
    jwtTokenService: gh<_i140.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
  ));
  gh.factory<_i189.MediaController>(() => _i189.MediaController(
        mediator: gh<_i104.Mediator>(),
        mapster: gh<_i100.Mapster>(),
      ));
  gh.singleton<_i190.MediaMediatorRegistrar>(
      _i190.MediaMediatorRegistrar(gh<_i104.Mediator>())..register());
  gh.singleton<_i191.RefreshTokenCommandHandler>(
      _i191.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i140.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    dateTimeProvider: gh<_i13.DateTimeProvider>(),
  ));
  gh.singleton<_i192.RegisterCommandHandler>(_i192.RegisterCommandHandler(
    jwtTokenService: gh<_i140.JwtTokenService>(),
    hashService: gh<_i193.HashService>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    dateTimeProvider: gh<_i193.DateTimeProvider>(),
  ));
  gh.singleton<_i194.RemoveDeviceCommandHandler>(
      _i194.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i14.TokenRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    hashService: gh<_i9.HashService>(),
  ));
  gh.singleton<_i195.SendMessageCommandHandler>(_i195.SendMessageCommandHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i100.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i196.EnvModule {}

class _$MapsterModule extends _i197.MapsterModule {}

class _$MediatorModule extends _i198.MediatorModule {}
