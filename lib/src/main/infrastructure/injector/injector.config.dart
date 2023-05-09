// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i42;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i153;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i200;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i117;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i170;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i77;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i76;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i74;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i147;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i148;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i73;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i146;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i96;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i194;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i103;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i197;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i115;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i198;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i116;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i181;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i32;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i193;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i102;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i143;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i145;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i144;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i97;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i69;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i68;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i56;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i55;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i54;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i52;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i150;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i151;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i149;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i124;
import 'package:itrust_server/src/features/chat/application/commands/create_dialogue_chat/create_dialogue_chat_command_handler.dart'
    as _i161;
import 'package:itrust_server/src/features/chat/application/commands/create_dialogue_chat/create_dialogue_chat_command_validator.dart'
    as _i6;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_handler.dart'
    as _i162;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_handler.dart'
    as _i163;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_validator.dart'
    as _i8;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_handler.dart'
    as _i201;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_validator.dart'
    as _i129;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_handler.dart'
    as _i169;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_handler.dart'
    as _i175;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_handler.dart'
    as _i191;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_validator.dart'
    as _i100;
import 'package:itrust_server/src/features/chat/application/queries/listen_messages/listen_messages_query_handler.dart'
    as _i192;
import 'package:itrust_server/src/features/chat/application/queries/listen_messages/listen_messages_query_validator.dart'
    as _i101;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_dialogue_chat_request.dart'
    as _i57;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_group_chat_request_json_converter.dart'
    as _i75;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_monologue_chat_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chats_request_json_converter.dart'
    as _i44;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_messages_request_json_converter.dart'
    as _i78;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_chats_request_json_converter.dart'
    as _i94;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_messages_request_json_converter.dart'
    as _i50;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/send_message_request_json_converter.dart'
    as _i70;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mapster_registrar.dart'
    as _i155;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mediator_registrar.dart'
    as _i156;
import 'package:itrust_server/src/features/chat/presentation/contracts/contracts.dart'
    as _i43;
import 'package:itrust_server/src/features/chat/presentation/controllers/chat_controller.dart'
    as _i154;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i10;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i14;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i40;
import 'package:itrust_server/src/features/common/common.dart' as _i199;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i41;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i11;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i160;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i171;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i20;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i184;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i35;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i93;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i92;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i166;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i167;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i91;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i165;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_handler.dart'
    as _i174;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/media/infrastructure/json_converters/get_media_request_json_converter.dart'
    as _i90;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mapster_registrar.dart'
    as _i105;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mediator_registrar.dart'
    as _i196;
import 'package:itrust_server/src/features/media/presentation/contracts/contracts.dart'
    as _i89;
import 'package:itrust_server/src/features/media/presentation/controllers/media_controller.dart'
    as _i195;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i159;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i164;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i9;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i189;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i98;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i190;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i99;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i134;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i135;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i136;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i137;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i180;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i31;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i178;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i179;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_handler.dart'
    as _i188;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_validator.dart'
    as _i39;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i72;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i59;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i61;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i60;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i62;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_user_posts_request_json_converter.dart'
    as _i63;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i64;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i65;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i66;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i67;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i111;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i112;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i71;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i58;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i110;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_handler.dart'
    as _i152;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_handler.dart'
    as _i118;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_validator.dart'
    as _i119;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_handler.dart'
    as _i120;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_validator.dart'
    as _i121;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_handler.dart'
    as _i122;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_validator.dart'
    as _i123;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i127;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i128;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_handler.dart'
    as _i138;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_validator.dart'
    as _i139;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_handler.dart'
    as _i168;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_handler.dart'
    as _i21;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i172;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_handler.dart'
    as _i173;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_handler.dart'
    as _i176;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_handler.dart'
    as _i177;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_handler.dart'
    as _i182;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_validator.dart'
    as _i33;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_handler.dart'
    as _i183;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_validator.dart'
    as _i34;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i185;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i36;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i186;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i37;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i187;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i38;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_for_user_request_json_converter.dart'
    as _i80;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_friend_bids_amount_request_json_converter.dart'
    as _i82;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_people_amount_request_json_converter.dart'
    as _i84;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i87;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i88;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_users_request_json_converter.dart'
    as _i86;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/respond_friend_bid_request_json_converter.dart'
    as _i47;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/user_action_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i141;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i142;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i48;
import 'package:itrust_server/src/features/user/presentation/contracts/get_for_user_request/get_for_user_request.dart'
    as _i79;
import 'package:itrust_server/src/features/user/presentation/contracts/get_friend_bids_amount_request/get_friend_bids_amount_request.dart'
    as _i81;
import 'package:itrust_server/src/features/user/presentation/contracts/get_people_amount_request/get_people_amount_request.dart'
    as _i83;
import 'package:itrust_server/src/features/user/presentation/contracts/get_users_request/get_users_request.dart'
    as _i85;
import 'package:itrust_server/src/features/user/presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart'
    as _i46;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i140;
import 'package:itrust_server/src/repositories/implementations/chat_repository.dart'
    as _i158;
import 'package:itrust_server/src/repositories/implementations/end_user_activity_repository.dart'
    as _i13;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i16;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i107;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i109;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i114;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i126;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i130;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i132;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i133;
import 'package:itrust_server/src/repositories/interfaces/chat_repository.dart'
    as _i157;
import 'package:itrust_server/src/repositories/interfaces/end_user_activity_repository.dart'
    as _i12;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i15;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i106;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i113;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i125;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i131;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i95;
import 'package:json_annotation/json_annotation.dart' as _i53;
import 'package:mapster/mapster.dart' as _i104;
import 'package:mediator/mediator.dart' as _i108;

import '../../../env/env_module.dart' as _i202;
import '../third_party/mapster_module.dart' as _i203;
import '../third_party/mediator_module.dart' as _i204;

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
  gh.singleton<_i6.CreateDialogueChatCommandValidator>(
      _i6.CreateDialogueChatCommandValidator());
  gh.singleton<_i7.CreateGroupChatCommandValidator>(
      _i7.CreateGroupChatCommandValidator());
  gh.singleton<_i8.CreateMonologueChatCommandValidator>(
      _i8.CreateMonologueChatCommandValidator());
  gh.singleton<_i9.CreatePostCommandValidator>(
      _i9.CreatePostCommandValidator());
  gh.singleton<_i10.DateTimeProvider>(_i11.ProdDateTimeProvider());
  gh.singleton<_i12.EndUserActivityRepository>(
    _i13.DevEndUserActivityRepository(
        dateTimeProvider: gh<_i14.DateTimeProvider>()),
    registerFor: {_dev},
  );
  gh.singleton<_i15.EndUserRepository>(
    _i16.DevEndUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i17.GetAllUsersQueryValidator>(
      _i17.GetAllUsersQueryValidator());
  gh.singleton<_i18.GetChatsQueryValidator>(_i18.GetChatsQueryValidator());
  gh.singleton<_i19.GetDevicesQueryValidator>(_i19.GetDevicesQueryValidator());
  gh.singleton<_i20.GetFeedQueryValidator>(_i20.GetFeedQueryValidator());
  gh.singleton<_i21.GetFriendBidsAmountQueryHandler>(
      _i21.GetFriendBidsAmountQueryHandler(
          endUserRepository: gh<_i15.EndUserRepository>()));
  gh.singleton<_i22.GetFriendBidsAmountQueryValidator>(
      _i22.GetFriendBidsAmountQueryValidator());
  gh.singleton<_i23.GetFriendsQueryValidator>(_i23.GetFriendsQueryValidator());
  gh.singleton<_i24.GetInboxFriendBidsQueryValidator>(
      _i24.GetInboxFriendBidsQueryValidator());
  gh.singleton<_i25.GetMediaQueryValidator>(_i25.GetMediaQueryValidator());
  gh.singleton<_i26.GetMessagesQueryValidator>(
      _i26.GetMessagesQueryValidator());
  gh.singleton<_i27.GetOutboxFriendBidsQueryValidator>(
      _i27.GetOutboxFriendBidsQueryValidator());
  gh.singleton<_i28.GetPeopleAmountQueryValidator>(
      _i28.GetPeopleAmountQueryValidator());
  gh.singleton<_i29.GetPostCommentQueryValidator>(
      _i29.GetPostCommentQueryValidator());
  gh.singleton<_i30.GetPostCommentsQueryValidator>(
      _i30.GetPostCommentsQueryValidator());
  gh.singleton<_i31.GetPostQueryValidator>(_i31.GetPostQueryValidator());
  gh.singleton<_i32.GetRulesQueryValidator>(_i32.GetRulesQueryValidator());
  gh.singleton<_i33.GetSubscribersQueryValidator>(
      _i33.GetSubscribersQueryValidator());
  gh.singleton<_i34.GetSubscriptionsQueryValidator>(
      _i34.GetSubscriptionsQueryValidator());
  gh.singleton<_i35.GetTagsQueryValidator>(_i35.GetTagsQueryValidator());
  gh.singleton<_i36.GetUserByIDQueryValidator>(
      _i36.GetUserByIDQueryValidator());
  gh.singleton<_i37.GetUserByNickQueryValidator>(
      _i37.GetUserByNickQueryValidator());
  gh.singleton<_i38.GetUserInfoQueryValidator>(
      _i38.GetUserInfoQueryValidator());
  gh.singleton<_i39.GetUserPostsQueryValidator>(
      _i39.GetUserPostsQueryValidator());
  gh.singleton<_i40.HashService>(_i41.ProdHashService());
  gh.singleton<_i42.JsonConverter<_i43.GetChatsRequest, Map<String, Object?>>>(
      _i44.GetChatsRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i43.CreateMonologueChatRequest,
              Map<String, Object?>>>(
      _i45.CreateMonologueChatRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i46.RespondFriendBidRequest,
          Map<String, Object?>>>(_i47.RespondFriendBidRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i48.UserActionRequest, Map<String, Object?>>>(
      _i49.UserActionRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i43.ListenMessagesRequest, Map<String, Object?>>>(
      _i50.ListenMessagesRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i51.VerifyTokenRequest, Map<String, Object?>>>(
      _i52.VerifyTokenRequestJsonConverter());
  gh.singleton<_i53.JsonConverter<_i51.RegisterRequest, Map<String, Object?>>>(
      _i54.RegisterRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i51.RefreshTokenRequest, Map<String, Object?>>>(
      _i55.RefreshTokenRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i51.LogOutRequest, Map<String, Object?>>>(
      _i56.LogOutRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i43.CreateDialogueChatRequest,
          Map<String, Object?>>>(_i57.CreateDialogueChatRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i58.CreatePostRequest, Map<String, Object?>>>(
      _i59.CreatePostRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i58.GetPostCommentsRequest,
          Map<String, Object?>>>(_i60.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i58.GetPostCommentRequest, Map<String, Object?>>>(
      _i61.GetPostCommentRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i58.GetPostRequest, Map<String, Object?>>>(
      _i62.GetPostRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i58.GetUserPostsRequest, Map<String, Object?>>>(
      _i63.GetUserPostsRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i58.LikePostCommentRequest,
          Map<String, Object?>>>(_i64.LikePostCommentRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i58.LikePostRequest, Map<String, Object?>>>(
      _i65.LikePostRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i58.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i66.UnlikePostCommentRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i58.UnlikePostRequest, Map<String, Object?>>>(
      _i67.UnlikePostRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i51.LogInRequest, Map<String, Object?>>>(
      _i68.LogInRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i51.GetRulesRequest, Map<String, Object?>>>(
      _i69.GetRulesRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i43.SendMessageRequest, Map<String, Object?>>>(
      _i70.SendMessageRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i71.CommentPostRequest, Map<String, Object?>>>(
      _i72.CommentPostRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i73.RemoveDeviceRequest, Map<String, Object?>>>(
      _i74.RemoveDeviceRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i43.CreateGroupChatRequest,
          Map<String, Object?>>>(_i75.CreateGroupChatRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i73.GetDevicesRequest, Map<String, Object?>>>(
      _i76.GetDevicesRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i73.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i77.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i43.GetMessagesRequest, Map<String, Object?>>>(
      _i78.GetMessagesRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i79.GetForUserRequest, Map<String, Object?>>>(
      _i80.GetForUserRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i81.GetFriendBidsAmountRequest,
              Map<String, Object?>>>(
      _i82.GetFriendBidsAmountRequestJsonConverter());
  gh.singleton<
      _i42.JsonConverter<_i83.GetPeopleAmountRequest,
          Map<String, Object?>>>(_i84.GetPeopleAmountRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i85.GetUsersRequest, Map<String, Object?>>>(
      _i86.GetUsersRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i48.GetUserByIDRequest, Map<String, Object?>>>(
      _i87.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i48.GetUserByNickRequest, Map<String, Object?>>>(
      _i88.GetUserByNickRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i89.GetMediaRequest, Map<String, Object?>>>(
      _i90.GetMediaRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i91.GetTagsRequest, Map<String, Object?>>>(
      _i92.GetTagsRequestJsonConverter());
  gh.singleton<_i42.JsonConverter<_i91.GetFeedRequest, Map<String, Object?>>>(
      _i93.GetFeedRequestJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i43.ListenChatsRequest, Map<String, Object?>>>(
      _i94.ListenChatsRequestJsonConverter());
  gh.singleton<_i95.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i96.JwtTokenService>(
      _i97.ProdJwtTokenService(gh<_i95.JwtSettings>()));
  gh.singleton<_i98.LikePostCommandValidator>(_i98.LikePostCommandValidator());
  gh.singleton<_i99.LikePostCommentCommandValidator>(
      _i99.LikePostCommentCommandValidator());
  gh.singleton<_i100.ListenChatsQueryValidator>(
      _i100.ListenChatsQueryValidator());
  gh.singleton<_i101.ListenMessagesQueryValidator>(
      _i101.ListenMessagesQueryValidator());
  gh.singleton<_i102.LogInQueryValidator>(_i102.LogInQueryValidator());
  gh.singleton<_i103.LogOutCommandValidator>(_i103.LogOutCommandValidator());
  gh.singleton<_i104.Mapster>(mapsterModule.mapster);
  gh.singleton<_i105.MediaMapsterRegistrar>(
      _i105.MediaMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i106.MediaRepository>(
    _i107.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i108.Mediator>(mediatorModule.mediator);
  gh.singleton<_i15.PasswordHashRepository>(
    _i109.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i110.PostController>(() => _i110.PostController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i111.PostMapsterRegistrar>(
      _i111.PostMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i112.PostMediatorRegistrar>(
      _i112.PostMediatorRegistrar(gh<_i108.Mediator>())..register());
  gh.singleton<_i113.PostRepository>(
    _i114.DevPostRepository(
      dateTimeProvider: gh<_i14.DateTimeProvider>(),
      mediaRepository: gh<_i106.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i115.RefreshTokenCommandValidator>(
      _i115.RefreshTokenCommandValidator());
  gh.singleton<_i116.RegisterCommandValidator>(
      _i116.RegisterCommandValidator());
  gh.singleton<_i117.RemoveDeviceCommandValidator>(
      _i117.RemoveDeviceCommandValidator());
  gh.singleton<_i118.RemoveFriendCommandHandler>(
      _i118.RemoveFriendCommandHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i119.RemoveFriendCommandValidator>(
      _i119.RemoveFriendCommandValidator());
  gh.singleton<_i120.RemoveSubscriberCommandHandler>(
      _i120.RemoveSubscriberCommandHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i121.RemoveSubscriberCommandValidator>(
      _i121.RemoveSubscriberCommandValidator());
  gh.singleton<_i122.RespondFriendBidCommandHandler>(
      _i122.RespondFriendBidCommandHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i123.RespondFriendBidCommandValidator>(
      _i123.RespondFriendBidCommandValidator());
  gh.factory<_i124.RulesController>(() => _i124.RulesController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i125.RulesRepository>(
    _i126.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i127.SendFriendBidCommandHandler>(
      _i127.SendFriendBidCommandHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i128.SendFriendBidCommandValidator>(
      _i128.SendFriendBidCommandValidator());
  gh.singleton<_i129.SendMessageCommandValidator>(
      _i129.SendMessageCommandValidator());
  gh.singleton<_i15.StaffUserRepository>(
    _i130.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i131.TagRepository>(
    _i132.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i15.TokenRepository>(
    _i133.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i134.UnlikePostCommandHandler>(_i134.UnlikePostCommandHandler(
    postRepository: gh<_i15.PostRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i135.UnlikePostCommandValidator>(
      _i135.UnlikePostCommandValidator());
  gh.singleton<_i136.UnlikePostCommentCommandHandler>(
      _i136.UnlikePostCommentCommandHandler(
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i137.UnlikePostCommentCommandValidator>(
      _i137.UnlikePostCommentCommandValidator());
  gh.singleton<_i138.UnsubscribeCommandHandler>(_i138.UnsubscribeCommandHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i139.UnsubscribeCommandValidator>(
      _i139.UnsubscribeCommandValidator());
  gh.factory<_i140.UserController>(() => _i140.UserController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i141.UserMapsterRegistrar>(
      _i141.UserMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i142.UserMediatorRegistrar>(
      _i142.UserMediatorRegistrar(gh<_i108.Mediator>())..register());
  gh.singleton<_i143.VerifyTokenQueryHandler>(_i143.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i144.JwtTokenService>(),
    tokenRepository: gh<_i15.TokenRepository>(),
  ));
  gh.singleton<_i145.VerifyTokenQueryValidator>(
      _i145.VerifyTokenQueryValidator());
  gh.factory<_i146.AccountController>(() => _i146.AccountController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i147.AccountMapsterRegistrar>(
      _i147.AccountMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i148.AccountMediatorRegistrar>(
      _i148.AccountMediatorRegistrar(gh<_i108.Mediator>())..register());
  gh.factory<_i149.AuthController>(() => _i149.AuthController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i150.AuthMapsterRegistrar>(
      _i150.AuthMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i151.AuthMediatorRegistrar>(
      _i151.AuthMediatorRegistrar(gh<_i108.Mediator>())..register());
  gh.singleton<_i152.CancelFriendBidCommandHandler>(
      _i152.CancelFriendBidCommandHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i153.ChangePersonalInfoCommandHandler>(
      _i153.ChangePersonalInfoCommandHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.factory<_i154.ChatController>(() => _i154.ChatController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i155.ChatMapsterRegistrar>(
      _i155.ChatMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i156.ChatMediatorRegistrar>(
      _i156.ChatMediatorRegistrar(gh<_i108.Mediator>())..register());
  gh.singleton<_i157.ChatRepository>(
    _i158.DevChatRepository(
      mediaRepository: gh<_i106.MediaRepository>(),
      dateTimeProvider: gh<_i14.DateTimeProvider>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i159.CommentPostCommandHandler>(_i159.CommentPostCommandHandler(
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i160.CommonMapsterRegistrar>(
      _i160.CommonMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i161.CreateDialogueChatCommandHandler>(
      _i161.CreateDialogueChatCommandHandler(
    chatRepository: gh<_i15.ChatRepository>(),
    endUserRepository: gh<_i15.EndUserRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i162.CreateGroupChatCommandHandler>(
      _i162.CreateGroupChatCommandHandler(
    chatRepository: gh<_i15.ChatRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    endUserRepository: gh<_i15.EndUserRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i163.CreateMonologueChatCommandHandler>(
      _i163.CreateMonologueChatCommandHandler(
    chatRepository: gh<_i15.ChatRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i164.CreatePostCommandHandler>(_i164.CreatePostCommandHandler(
    postRepository: gh<_i15.PostRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    endUserRepository: gh<_i15.EndUserRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.factory<_i165.FeedController>(() => _i165.FeedController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i166.FeedMapsterRegistrar>(
      _i166.FeedMapsterRegistrar(gh<_i104.Mapster>())..register());
  gh.singleton<_i167.FeedMediatorRegistrar>(
      _i167.FeedMediatorRegistrar(gh<_i108.Mediator>())..register());
  gh.singleton<_i168.GetAllUsersQueryHandler>(_i168.GetAllUsersQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    staffUserRepository: gh<_i15.StaffUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i169.GetChatsQueryHandler>(_i169.GetChatsQueryHandler(
    chatRepository: gh<_i15.ChatRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i170.GetDevicesQueryHandler>(_i170.GetDevicesQueryHandler(
    tokenRepository: gh<_i15.TokenRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i171.GetFeedQueryHandler>(_i171.GetFeedQueryHandler(
    postRepository: gh<_i15.PostRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i172.GetFriendsQueryHandler>(_i172.GetFriendsQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i173.GetInboxFriendBidsQueryHandler>(
      _i173.GetInboxFriendBidsQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i174.GetMediaQueryHandler>(
      _i174.GetMediaQueryHandler(mediaRepository: gh<_i15.MediaRepository>()));
  gh.singleton<_i175.GetMessagesQueryHandler>(_i175.GetMessagesQueryHandler(
    mapster: gh<_i104.Mapster>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    chatRepository: gh<_i15.ChatRepository>(),
  ));
  gh.singleton<_i176.GetOutboxFriendBidsQueryHandler>(
      _i176.GetOutboxFriendBidsQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i177.GetPeopleAmountQueryHandler>(
      _i177.GetPeopleAmountQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    staffUserRepository: gh<_i15.StaffUserRepository>(),
  ));
  gh.singleton<_i178.GetPostCommentQueryHandler>(
      _i178.GetPostCommentQueryHandler(
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i179.GetPostCommentsQueryHandler>(
      _i179.GetPostCommentsQueryHandler(
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i180.GetPostQueryHandler>(_i180.GetPostQueryHandler(
    postRepository: gh<_i15.PostRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i181.GetRulesQueryHandler>(
      _i181.GetRulesQueryHandler(rulesRepository: gh<_i15.RulesRepository>()));
  gh.singleton<_i182.GetSubscribersQueryHandler>(
      _i182.GetSubscribersQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i183.GetSubscriptionsQueryHandler>(
      _i183.GetSubscriptionsQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i184.GetTagsQueryHandler>(
      _i184.GetTagsQueryHandler(tagRepository: gh<_i15.TagRepository>()));
  gh.singleton<_i185.GetUserByIDQueryHandler>(_i185.GetUserByIDQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    staffUserRepository: gh<_i15.StaffUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i186.GetUserByNickQueryHandler>(_i186.GetUserByNickQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    staffUserRepository: gh<_i15.StaffUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i187.GetUserInfoQueryHandler>(_i187.GetUserInfoQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    staffUserRepository: gh<_i15.StaffUserRepository>(),
    endUserActivityRepository: gh<_i15.EndUserActivityRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i188.GetUserPostsQueryHandler>(_i188.GetUserPostsQueryHandler(
    endUserRepository: gh<_i15.EndUserRepository>(),
    postRepository: gh<_i15.PostRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i189.LikePostCommandHandler>(_i189.LikePostCommandHandler(
    postRepository: gh<_i15.PostRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i190.LikePostCommentCommandHandler>(
      _i190.LikePostCommentCommandHandler(
    postRepository: gh<_i15.PostRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i191.ListenChatsQueryHandler>(_i191.ListenChatsQueryHandler(
    chatRepository: gh<_i15.ChatRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i192.ListenMessagesQueryHandler>(
      _i192.ListenMessagesQueryHandler(
    chatRepository: gh<_i15.ChatRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  gh.singleton<_i193.LogInQueryHandler>(_i193.LogInQueryHandler(
    jwtTokenService: gh<_i144.JwtTokenService>(),
    hashService: gh<_i40.HashService>(),
    endUserRepository: gh<_i15.EndUserRepository>(),
    passwordHashRepository: gh<_i15.PasswordHashRepository>(),
    tokenRepository: gh<_i15.TokenRepository>(),
    dateTimeProvider: gh<_i14.DateTimeProvider>(),
  ));
  gh.singleton<_i194.LogOutCommandHandler>(_i194.LogOutCommandHandler(
    jwtTokenService: gh<_i144.JwtTokenService>(),
    tokenRepository: gh<_i15.TokenRepository>(),
  ));
  gh.factory<_i195.MediaController>(() => _i195.MediaController(
        mediator: gh<_i108.Mediator>(),
        mapster: gh<_i104.Mapster>(),
      ));
  gh.singleton<_i196.MediaMediatorRegistrar>(
      _i196.MediaMediatorRegistrar(gh<_i108.Mediator>())..register());
  gh.singleton<_i197.RefreshTokenCommandHandler>(
      _i197.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i144.JwtTokenService>(),
    tokenRepository: gh<_i15.TokenRepository>(),
    endUserRepository: gh<_i15.EndUserRepository>(),
    dateTimeProvider: gh<_i14.DateTimeProvider>(),
  ));
  gh.singleton<_i198.RegisterCommandHandler>(_i198.RegisterCommandHandler(
    jwtTokenService: gh<_i144.JwtTokenService>(),
    hashService: gh<_i199.HashService>(),
    endUserRepository: gh<_i15.EndUserRepository>(),
    passwordHashRepository: gh<_i15.PasswordHashRepository>(),
    tokenRepository: gh<_i15.TokenRepository>(),
    dateTimeProvider: gh<_i199.DateTimeProvider>(),
  ));
  gh.singleton<_i200.RemoveDeviceCommandHandler>(
      _i200.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i15.TokenRepository>(),
    passwordHashRepository: gh<_i15.PasswordHashRepository>(),
    endUserRepository: gh<_i15.EndUserRepository>(),
    hashService: gh<_i10.HashService>(),
  ));
  gh.singleton<_i201.SendMessageCommandHandler>(_i201.SendMessageCommandHandler(
    chatRepository: gh<_i15.ChatRepository>(),
    mediaRepository: gh<_i15.MediaRepository>(),
    mapster: gh<_i104.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i202.EnvModule {}

class _$MapsterModule extends _i203.MapsterModule {}

class _$MediatorModule extends _i204.MediatorModule {}
