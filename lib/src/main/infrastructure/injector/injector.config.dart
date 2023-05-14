// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i44;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i157;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i206;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i121;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i175;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i20;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i83;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i74;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i87;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i151;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i152;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i73;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i150;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i100;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i200;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i107;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i203;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i119;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i204;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i120;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i187;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i34;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i199;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i106;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i147;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i149;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i148;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i101;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i79;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i76;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i81;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i82;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i70;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i84;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i154;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i155;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i69;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i153;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i128;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_handler.dart'
    as _i165;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_validator.dart'
    as _i6;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_handler.dart'
    as _i166;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_handler.dart'
    as _i207;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_validator.dart'
    as _i133;
import 'package:itrust_server/src/features/chat/application/queries/get_chat/get_chat_query_handler.dart'
    as _i173;
import 'package:itrust_server/src/features/chat/application/queries/get_chat/get_chat_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/chat/application/queries/get_chat_partners/get_chat_partners_query_handler.dart'
    as _i172;
import 'package:itrust_server/src/features/chat/application/queries/get_chat_partners/get_chat_partners_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_handler.dart'
    as _i174;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/chat/application/queries/get_message/get_message_query_handler.dart'
    as _i180;
import 'package:itrust_server/src/features/chat/application/queries/get_message/get_message_query_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_handler.dart'
    as _i181;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_handler.dart'
    as _i197;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_validator.dart'
    as _i104;
import 'package:itrust_server/src/features/chat/application/queries/listen_messages/listen_messages_query_handler.dart'
    as _i198;
import 'package:itrust_server/src/features/chat/application/queries/listen_messages/listen_messages_query_validator.dart'
    as _i105;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_group_chat_request_json_converter.dart'
    as _i52;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_monologue_chat_request_json_converter.dart'
    as _i97;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chat_partners_request_json_converter.dart'
    as _i77;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chat_request_json_converter.dart'
    as _i71;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chats_request_json_converter.dart'
    as _i96;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_message_request_json_converter.dart'
    as _i67;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_messages_request_json_converter.dart'
    as _i80;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_chats_request_json_converter.dart'
    as _i95;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_messages_request_json_converter.dart'
    as _i75;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/send_message_request_json_converter.dart'
    as _i94;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mapster_registrar.dart'
    as _i159;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mediator_registrar.dart'
    as _i160;
import 'package:itrust_server/src/features/chat/presentation/contracts/contracts.dart'
    as _i51;
import 'package:itrust_server/src/features/chat/presentation/controllers/chat_controller.dart'
    as _i158;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i9;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i13;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i42;
import 'package:itrust_server/src/features/common/common.dart' as _i205;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i43;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i10;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i164;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i176;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i21;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i190;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i37;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i72;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i50;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i169;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i170;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i49;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i168;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_handler.dart'
    as _i179;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/media/infrastructure/json_converters/get_media_request_json_converter.dart'
    as _i48;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mapster_registrar.dart'
    as _i109;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mediator_registrar.dart'
    as _i202;
import 'package:itrust_server/src/features/media/presentation/contracts/contracts.dart'
    as _i47;
import 'package:itrust_server/src/features/media/presentation/controllers/media_controller.dart'
    as _i201;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i163;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i167;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i8;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i195;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i102;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i196;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i103;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i138;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i139;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i140;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i141;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i186;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i33;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i184;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i31;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i185;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i32;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_handler.dart'
    as _i194;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_validator.dart'
    as _i41;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/comment_post_request_json_converter.dart'
    as _i56;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/create_post_request_json_converter.dart'
    as _i58;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comment_request_json_converter.dart'
    as _i60;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_comments_request_json_converter.dart'
    as _i59;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_post_request_json_converter.dart'
    as _i61;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/get_user_posts_request_json_converter.dart'
    as _i62;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_comment_request_json_converter.dart'
    as _i63;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/like_post_request_json_converter.dart'
    as _i64;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_comment_request_json_converter.dart'
    as _i65;
import 'package:itrust_server/src/features/post/infrastructure/json_converters/unlike_post_request_json_converter.dart'
    as _i66;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i115;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i116;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i55;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i57;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i114;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_handler.dart'
    as _i156;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_handler.dart'
    as _i122;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_validator.dart'
    as _i123;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_handler.dart'
    as _i124;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_validator.dart'
    as _i125;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_handler.dart'
    as _i126;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_validator.dart'
    as _i127;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i131;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i132;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_handler.dart'
    as _i142;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_validator.dart'
    as _i143;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_handler.dart'
    as _i171;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_handler.dart'
    as _i22;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i177;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_handler.dart'
    as _i178;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_handler.dart'
    as _i182;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_handler.dart'
    as _i183;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_handler.dart'
    as _i188;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_validator.dart'
    as _i35;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_handler.dart'
    as _i189;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_validator.dart'
    as _i36;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i191;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i38;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i192;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i39;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i193;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i40;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_for_user_request_json_converter.dart'
    as _i86;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_friend_bids_amount_request_json_converter.dart'
    as _i89;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_people_amount_request_json_converter.dart'
    as _i91;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i78;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i98;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_users_request_json_converter.dart'
    as _i93;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/respond_friend_bid_request_json_converter.dart'
    as _i46;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/user_action_request_json_converter.dart'
    as _i54;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i145;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i146;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i53;
import 'package:itrust_server/src/features/user/presentation/contracts/get_for_user_request/get_for_user_request.dart'
    as _i85;
import 'package:itrust_server/src/features/user/presentation/contracts/get_friend_bids_amount_request/get_friend_bids_amount_request.dart'
    as _i88;
import 'package:itrust_server/src/features/user/presentation/contracts/get_people_amount_request/get_people_amount_request.dart'
    as _i90;
import 'package:itrust_server/src/features/user/presentation/contracts/get_users_request/get_users_request.dart'
    as _i92;
import 'package:itrust_server/src/features/user/presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart'
    as _i45;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i144;
import 'package:itrust_server/src/repositories/implementations/chat_repository.dart'
    as _i162;
import 'package:itrust_server/src/repositories/implementations/end_user_activity_repository.dart'
    as _i12;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i15;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i111;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i113;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i118;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i130;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i134;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i136;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i137;
import 'package:itrust_server/src/repositories/interfaces/chat_repository.dart'
    as _i161;
import 'package:itrust_server/src/repositories/interfaces/end_user_activity_repository.dart'
    as _i11;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i14;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i110;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i117;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i129;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i135;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i99;
import 'package:json_annotation/json_annotation.dart' as _i68;
import 'package:mapster/mapster.dart' as _i108;
import 'package:mediator/mediator.dart' as _i112;

import '../../../env/env_module.dart' as _i208;
import '../third_party/mapster_module.dart' as _i209;
import '../third_party/mediator_module.dart' as _i210;

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
  gh.singleton<_i17.GetChatPartnersQueryValidator>(
      _i17.GetChatPartnersQueryValidator());
  gh.singleton<_i18.GetChatQueryValidator>(_i18.GetChatQueryValidator());
  gh.singleton<_i19.GetChatsQueryValidator>(_i19.GetChatsQueryValidator());
  gh.singleton<_i20.GetDevicesQueryValidator>(_i20.GetDevicesQueryValidator());
  gh.singleton<_i21.GetFeedQueryValidator>(_i21.GetFeedQueryValidator());
  gh.singleton<_i22.GetFriendBidsAmountQueryHandler>(
      _i22.GetFriendBidsAmountQueryHandler(
          endUserRepository: gh<_i14.EndUserRepository>()));
  gh.singleton<_i23.GetFriendBidsAmountQueryValidator>(
      _i23.GetFriendBidsAmountQueryValidator());
  gh.singleton<_i24.GetFriendsQueryValidator>(_i24.GetFriendsQueryValidator());
  gh.singleton<_i25.GetInboxFriendBidsQueryValidator>(
      _i25.GetInboxFriendBidsQueryValidator());
  gh.singleton<_i26.GetMediaQueryValidator>(_i26.GetMediaQueryValidator());
  gh.singleton<_i27.GetMessageQueryValidator>(_i27.GetMessageQueryValidator());
  gh.singleton<_i28.GetMessagesQueryValidator>(
      _i28.GetMessagesQueryValidator());
  gh.singleton<_i29.GetOutboxFriendBidsQueryValidator>(
      _i29.GetOutboxFriendBidsQueryValidator());
  gh.singleton<_i30.GetPeopleAmountQueryValidator>(
      _i30.GetPeopleAmountQueryValidator());
  gh.singleton<_i31.GetPostCommentQueryValidator>(
      _i31.GetPostCommentQueryValidator());
  gh.singleton<_i32.GetPostCommentsQueryValidator>(
      _i32.GetPostCommentsQueryValidator());
  gh.singleton<_i33.GetPostQueryValidator>(_i33.GetPostQueryValidator());
  gh.singleton<_i34.GetRulesQueryValidator>(_i34.GetRulesQueryValidator());
  gh.singleton<_i35.GetSubscribersQueryValidator>(
      _i35.GetSubscribersQueryValidator());
  gh.singleton<_i36.GetSubscriptionsQueryValidator>(
      _i36.GetSubscriptionsQueryValidator());
  gh.singleton<_i37.GetTagsQueryValidator>(_i37.GetTagsQueryValidator());
  gh.singleton<_i38.GetUserByIDQueryValidator>(
      _i38.GetUserByIDQueryValidator());
  gh.singleton<_i39.GetUserByNickQueryValidator>(
      _i39.GetUserByNickQueryValidator());
  gh.singleton<_i40.GetUserInfoQueryValidator>(
      _i40.GetUserInfoQueryValidator());
  gh.singleton<_i41.GetUserPostsQueryValidator>(
      _i41.GetUserPostsQueryValidator());
  gh.singleton<_i42.HashService>(_i43.ProdHashService());
  gh.singleton<
      _i44.JsonConverter<_i45.RespondFriendBidRequest,
          Map<String, Object?>>>(_i46.RespondFriendBidRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i47.GetMediaRequest, Map<String, Object?>>>(
      _i48.GetMediaRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i49.GetTagsRequest, Map<String, Object?>>>(
      _i50.GetTagsRequestJsonConverter());
  gh.singleton<
      _i44.JsonConverter<_i51.CreateGroupChatRequest,
          Map<String, Object?>>>(_i52.CreateGroupChatRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i53.UserActionRequest, Map<String, Object?>>>(
      _i54.UserActionRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i55.CommentPostRequest, Map<String, Object?>>>(
      _i56.CommentPostRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i57.CreatePostRequest, Map<String, Object?>>>(
      _i58.CreatePostRequestJsonConverter());
  gh.singleton<
      _i44.JsonConverter<_i57.GetPostCommentsRequest,
          Map<String, Object?>>>(_i59.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i57.GetPostCommentRequest, Map<String, Object?>>>(
      _i60.GetPostCommentRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i57.GetPostRequest, Map<String, Object?>>>(
      _i61.GetPostRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i57.GetUserPostsRequest, Map<String, Object?>>>(
      _i62.GetUserPostsRequestJsonConverter());
  gh.singleton<
      _i44.JsonConverter<_i57.LikePostCommentRequest,
          Map<String, Object?>>>(_i63.LikePostCommentRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i57.LikePostRequest, Map<String, Object?>>>(
      _i64.LikePostRequestJsonConverter());
  gh.singleton<
      _i44.JsonConverter<_i57.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i65.UnlikePostCommentRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i57.UnlikePostRequest, Map<String, Object?>>>(
      _i66.UnlikePostRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i51.GetMessageRequest, Map<String, Object?>>>(
      _i67.GetMessageRequestJsonConverter());
  gh.singleton<_i68.JsonConverter<_i69.RegisterRequest, Map<String, Object?>>>(
      _i70.RegisterRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i51.GetChatRequest, Map<String, Object?>>>(
      _i71.GetChatRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i49.GetFeedRequest, Map<String, Object?>>>(
      _i72.GetFeedRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i73.GetDevicesRequest, Map<String, Object?>>>(
      _i74.GetDevicesRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i51.ListenMessagesRequest, Map<String, Object?>>>(
      _i75.ListenMessagesRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i69.LogInRequest, Map<String, Object?>>>(
      _i76.LogInRequestJsonConverter());
  gh.singleton<
      _i44.JsonConverter<_i51.GetChatPartnersRequest,
          Map<String, Object?>>>(_i77.GetChatPartnersRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i53.GetUserByIDRequest, Map<String, Object?>>>(
      _i78.GetUserByIDRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i69.GetRulesRequest, Map<String, Object?>>>(
      _i79.GetRulesRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i51.GetMessagesRequest, Map<String, Object?>>>(
      _i80.GetMessagesRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i69.LogOutRequest, Map<String, Object?>>>(
      _i81.LogOutRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i69.RefreshTokenRequest, Map<String, Object?>>>(
      _i82.RefreshTokenRequestJsonConverter());
  gh.singleton<
      _i44.JsonConverter<_i73.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i83.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i69.VerifyTokenRequest, Map<String, Object?>>>(
      _i84.VerifyTokenRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i85.GetForUserRequest, Map<String, Object?>>>(
      _i86.GetForUserRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i73.RemoveDeviceRequest, Map<String, Object?>>>(
      _i87.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i88.GetFriendBidsAmountRequest,
              Map<String, Object?>>>(
      _i89.GetFriendBidsAmountRequestJsonConverter());
  gh.singleton<
      _i44.JsonConverter<_i90.GetPeopleAmountRequest,
          Map<String, Object?>>>(_i91.GetPeopleAmountRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i92.GetUsersRequest, Map<String, Object?>>>(
      _i93.GetUsersRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i51.SendMessageRequest, Map<String, Object?>>>(
      _i94.SendMessageRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i51.ListenChatsRequest, Map<String, Object?>>>(
      _i95.ListenChatsRequestJsonConverter());
  gh.singleton<_i44.JsonConverter<_i51.GetChatsRequest, Map<String, Object?>>>(
      _i96.GetChatsRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i51.CreateMonologueChatRequest,
              Map<String, Object?>>>(
      _i97.CreateMonologueChatRequestJsonConverter());
  gh.singleton<
          _i44.JsonConverter<_i53.GetUserByNickRequest, Map<String, Object?>>>(
      _i98.GetUserByNickRequestJsonConverter());
  gh.singleton<_i99.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i100.JwtTokenService>(
      _i101.ProdJwtTokenService(gh<_i99.JwtSettings>()));
  gh.singleton<_i102.LikePostCommandValidator>(
      _i102.LikePostCommandValidator());
  gh.singleton<_i103.LikePostCommentCommandValidator>(
      _i103.LikePostCommentCommandValidator());
  gh.singleton<_i104.ListenChatsQueryValidator>(
      _i104.ListenChatsQueryValidator());
  gh.singleton<_i105.ListenMessagesQueryValidator>(
      _i105.ListenMessagesQueryValidator());
  gh.singleton<_i106.LogInQueryValidator>(_i106.LogInQueryValidator());
  gh.singleton<_i107.LogOutCommandValidator>(_i107.LogOutCommandValidator());
  gh.singleton<_i108.Mapster>(mapsterModule.mapster);
  gh.singleton<_i109.MediaMapsterRegistrar>(
      _i109.MediaMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i110.MediaRepository>(
    _i111.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i112.Mediator>(mediatorModule.mediator);
  gh.singleton<_i14.PasswordHashRepository>(
    _i113.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i114.PostController>(() => _i114.PostController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i115.PostMapsterRegistrar>(
      _i115.PostMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i116.PostMediatorRegistrar>(
      _i116.PostMediatorRegistrar(gh<_i112.Mediator>())..register());
  gh.singleton<_i117.PostRepository>(
    _i118.DevPostRepository(
      dateTimeProvider: gh<_i13.DateTimeProvider>(),
      mediaRepository: gh<_i110.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i119.RefreshTokenCommandValidator>(
      _i119.RefreshTokenCommandValidator());
  gh.singleton<_i120.RegisterCommandValidator>(
      _i120.RegisterCommandValidator());
  gh.singleton<_i121.RemoveDeviceCommandValidator>(
      _i121.RemoveDeviceCommandValidator());
  gh.singleton<_i122.RemoveFriendCommandHandler>(
      _i122.RemoveFriendCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i123.RemoveFriendCommandValidator>(
      _i123.RemoveFriendCommandValidator());
  gh.singleton<_i124.RemoveSubscriberCommandHandler>(
      _i124.RemoveSubscriberCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i125.RemoveSubscriberCommandValidator>(
      _i125.RemoveSubscriberCommandValidator());
  gh.singleton<_i126.RespondFriendBidCommandHandler>(
      _i126.RespondFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i127.RespondFriendBidCommandValidator>(
      _i127.RespondFriendBidCommandValidator());
  gh.factory<_i128.RulesController>(() => _i128.RulesController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i129.RulesRepository>(
    _i130.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i131.SendFriendBidCommandHandler>(
      _i131.SendFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i132.SendFriendBidCommandValidator>(
      _i132.SendFriendBidCommandValidator());
  gh.singleton<_i133.SendMessageCommandValidator>(
      _i133.SendMessageCommandValidator());
  gh.singleton<_i14.StaffUserRepository>(
    _i134.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i135.TagRepository>(
    _i136.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i14.TokenRepository>(
    _i137.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i138.UnlikePostCommandHandler>(_i138.UnlikePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i139.UnlikePostCommandValidator>(
      _i139.UnlikePostCommandValidator());
  gh.singleton<_i140.UnlikePostCommentCommandHandler>(
      _i140.UnlikePostCommentCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i141.UnlikePostCommentCommandValidator>(
      _i141.UnlikePostCommentCommandValidator());
  gh.singleton<_i142.UnsubscribeCommandHandler>(_i142.UnsubscribeCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i143.UnsubscribeCommandValidator>(
      _i143.UnsubscribeCommandValidator());
  gh.factory<_i144.UserController>(() => _i144.UserController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i145.UserMapsterRegistrar>(
      _i145.UserMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i146.UserMediatorRegistrar>(
      _i146.UserMediatorRegistrar(gh<_i112.Mediator>())..register());
  gh.singleton<_i147.VerifyTokenQueryHandler>(_i147.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i148.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
  ));
  gh.singleton<_i149.VerifyTokenQueryValidator>(
      _i149.VerifyTokenQueryValidator());
  gh.factory<_i150.AccountController>(() => _i150.AccountController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i151.AccountMapsterRegistrar>(
      _i151.AccountMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i152.AccountMediatorRegistrar>(
      _i152.AccountMediatorRegistrar(gh<_i112.Mediator>())..register());
  gh.factory<_i153.AuthController>(() => _i153.AuthController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i154.AuthMapsterRegistrar>(
      _i154.AuthMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i155.AuthMediatorRegistrar>(
      _i155.AuthMediatorRegistrar(gh<_i112.Mediator>())..register());
  gh.singleton<_i156.CancelFriendBidCommandHandler>(
      _i156.CancelFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i157.ChangePersonalInfoCommandHandler>(
      _i157.ChangePersonalInfoCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.factory<_i158.ChatController>(() => _i158.ChatController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i159.ChatMapsterRegistrar>(
      _i159.ChatMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i160.ChatMediatorRegistrar>(
      _i160.ChatMediatorRegistrar(gh<_i112.Mediator>())..register());
  gh.singleton<_i161.ChatRepository>(
    _i162.DevChatRepository(
      mediaRepository: gh<_i110.MediaRepository>(),
      dateTimeProvider: gh<_i13.DateTimeProvider>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i163.CommentPostCommandHandler>(_i163.CommentPostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i164.CommonMapsterRegistrar>(
      _i164.CommonMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i165.CreateGroupChatCommandHandler>(
      _i165.CreateGroupChatCommandHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i166.CreateMonologueChatCommandHandler>(
      _i166.CreateMonologueChatCommandHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i167.CreatePostCommandHandler>(_i167.CreatePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.factory<_i168.FeedController>(() => _i168.FeedController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i169.FeedMapsterRegistrar>(
      _i169.FeedMapsterRegistrar(gh<_i108.Mapster>())..register());
  gh.singleton<_i170.FeedMediatorRegistrar>(
      _i170.FeedMediatorRegistrar(gh<_i112.Mediator>())..register());
  gh.singleton<_i171.GetAllUsersQueryHandler>(_i171.GetAllUsersQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i172.GetChatPartnersQueryHandler>(
      _i172.GetChatPartnersQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i173.GetChatQueryHandler>(_i173.GetChatQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    dateTimeProvider: gh<_i13.DateTimeProvider>(),
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i174.GetChatsQueryHandler>(_i174.GetChatsQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i175.GetDevicesQueryHandler>(_i175.GetDevicesQueryHandler(
    tokenRepository: gh<_i14.TokenRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i176.GetFeedQueryHandler>(_i176.GetFeedQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i177.GetFriendsQueryHandler>(_i177.GetFriendsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i178.GetInboxFriendBidsQueryHandler>(
      _i178.GetInboxFriendBidsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i179.GetMediaQueryHandler>(
      _i179.GetMediaQueryHandler(mediaRepository: gh<_i14.MediaRepository>()));
  gh.singleton<_i180.GetMessageQueryHandler>(_i180.GetMessageQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i181.GetMessagesQueryHandler>(_i181.GetMessagesQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    chatRepository: gh<_i14.ChatRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i182.GetOutboxFriendBidsQueryHandler>(
      _i182.GetOutboxFriendBidsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i183.GetPeopleAmountQueryHandler>(
      _i183.GetPeopleAmountQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
  ));
  gh.singleton<_i184.GetPostCommentQueryHandler>(
      _i184.GetPostCommentQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i185.GetPostCommentsQueryHandler>(
      _i185.GetPostCommentsQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i186.GetPostQueryHandler>(_i186.GetPostQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i187.GetRulesQueryHandler>(
      _i187.GetRulesQueryHandler(rulesRepository: gh<_i14.RulesRepository>()));
  gh.singleton<_i188.GetSubscribersQueryHandler>(
      _i188.GetSubscribersQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i189.GetSubscriptionsQueryHandler>(
      _i189.GetSubscriptionsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i190.GetTagsQueryHandler>(
      _i190.GetTagsQueryHandler(tagRepository: gh<_i14.TagRepository>()));
  gh.singleton<_i191.GetUserByIDQueryHandler>(_i191.GetUserByIDQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i192.GetUserByNickQueryHandler>(_i192.GetUserByNickQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i193.GetUserInfoQueryHandler>(_i193.GetUserInfoQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i194.GetUserPostsQueryHandler>(_i194.GetUserPostsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i195.LikePostCommandHandler>(_i195.LikePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i196.LikePostCommentCommandHandler>(
      _i196.LikePostCommentCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i197.ListenChatsQueryHandler>(_i197.ListenChatsQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i198.ListenMessagesQueryHandler>(
      _i198.ListenMessagesQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  gh.singleton<_i199.LogInQueryHandler>(_i199.LogInQueryHandler(
    jwtTokenService: gh<_i148.JwtTokenService>(),
    hashService: gh<_i42.HashService>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    dateTimeProvider: gh<_i13.DateTimeProvider>(),
  ));
  gh.singleton<_i200.LogOutCommandHandler>(_i200.LogOutCommandHandler(
    jwtTokenService: gh<_i148.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
  ));
  gh.factory<_i201.MediaController>(() => _i201.MediaController(
        mediator: gh<_i112.Mediator>(),
        mapster: gh<_i108.Mapster>(),
      ));
  gh.singleton<_i202.MediaMediatorRegistrar>(
      _i202.MediaMediatorRegistrar(gh<_i112.Mediator>())..register());
  gh.singleton<_i203.RefreshTokenCommandHandler>(
      _i203.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i148.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    dateTimeProvider: gh<_i13.DateTimeProvider>(),
  ));
  gh.singleton<_i204.RegisterCommandHandler>(_i204.RegisterCommandHandler(
    jwtTokenService: gh<_i148.JwtTokenService>(),
    hashService: gh<_i205.HashService>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    dateTimeProvider: gh<_i205.DateTimeProvider>(),
  ));
  gh.singleton<_i206.RemoveDeviceCommandHandler>(
      _i206.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i14.TokenRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    hashService: gh<_i9.HashService>(),
  ));
  gh.singleton<_i207.SendMessageCommandHandler>(_i207.SendMessageCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i108.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i208.EnvModule {}

class _$MapsterModule extends _i209.MapsterModule {}

class _$MediatorModule extends _i210.MediatorModule {}
