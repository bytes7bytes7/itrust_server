// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:freezed_annotation/freezed_annotation.dart' as _i43;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_handler.dart'
    as _i155;
import 'package:itrust_server/src/features/account/application/commands/change_personal_info/change_personal_info_command_validator.dart'
    as _i4;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_handler.dart'
    as _i203;
import 'package:itrust_server/src/features/account/application/commands/remove_device/remove_device_command_validator.dart'
    as _i119;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_handler.dart'
    as _i172;
import 'package:itrust_server/src/features/account/application/queries/get_devices/get_devices_query_validator.dart'
    as _i19;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/change_personal_info_request_json_converter.dart'
    as _i49;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/get_devices_request_json_converter.dart'
    as _i47;
import 'package:itrust_server/src/features/account/infrastructure/json_converters/remove_device_request_json_converter.dart'
    as _i70;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mapster_registrar.dart'
    as _i149;
import 'package:itrust_server/src/features/account/infrastructure/third_party/mediator_registrar.dart'
    as _i150;
import 'package:itrust_server/src/features/account/presentation/contracts/contracts.dart'
    as _i46;
import 'package:itrust_server/src/features/account/presentation/controllers/account_controller.dart'
    as _i148;
import 'package:itrust_server/src/features/auth/application/application.dart'
    as _i98;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_handler.dart'
    as _i197;
import 'package:itrust_server/src/features/auth/application/commands/log_out/log_out_command_validator.dart'
    as _i105;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_handler.dart'
    as _i200;
import 'package:itrust_server/src/features/auth/application/commands/refresh_token/refresh_token_command_validator.dart'
    as _i117;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_handler.dart'
    as _i201;
import 'package:itrust_server/src/features/auth/application/commands/register/register_command_validator.dart'
    as _i118;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_handler.dart'
    as _i184;
import 'package:itrust_server/src/features/auth/application/queries/get_rules/get_rules_query_validator.dart'
    as _i33;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_handler.dart'
    as _i196;
import 'package:itrust_server/src/features/auth/application/queries/log_in/log_in_query_validator.dart'
    as _i104;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_handler.dart'
    as _i145;
import 'package:itrust_server/src/features/auth/application/queries/verify_token/verify_token_query_validator.dart'
    as _i147;
import 'package:itrust_server/src/features/auth/application/services/jwt_token_service.dart'
    as _i146;
import 'package:itrust_server/src/features/auth/infrastructure/app_services/jwt_token_service.dart'
    as _i99;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/get_rules_request_json_converter.dart'
    as _i69;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_in_request_json_converter.dart'
    as _i68;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/log_out_request_json_converter.dart'
    as _i67;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/refresh_token_request_json_converter.dart'
    as _i54;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/register_request_json_converter.dart'
    as _i53;
import 'package:itrust_server/src/features/auth/infrastructure/json_converters/verify_token_request_json_converter.dart'
    as _i51;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mapster_registrar.dart'
    as _i152;
import 'package:itrust_server/src/features/auth/infrastructure/third_party/mediator_registrar.dart'
    as _i153;
import 'package:itrust_server/src/features/auth/presentation/contracts/contracts.dart'
    as _i50;
import 'package:itrust_server/src/features/auth/presentation/controllers/auth_controller.dart'
    as _i151;
import 'package:itrust_server/src/features/auth/presentation/controllers/rules_controller.dart'
    as _i126;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_handler.dart'
    as _i163;
import 'package:itrust_server/src/features/chat/application/commands/create_group_chat/create_group_chat_command_validator.dart'
    as _i6;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_handler.dart'
    as _i164;
import 'package:itrust_server/src/features/chat/application/commands/create_monologue_chat/create_monologue_chat_command_validator.dart'
    as _i7;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_handler.dart'
    as _i204;
import 'package:itrust_server/src/features/chat/application/commands/send_message/send_message_command_validator.dart'
    as _i131;
import 'package:itrust_server/src/features/chat/application/queries/get_chat/get_chat_query_handler.dart'
    as _i170;
import 'package:itrust_server/src/features/chat/application/queries/get_chat/get_chat_query_validator.dart'
    as _i17;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_handler.dart'
    as _i171;
import 'package:itrust_server/src/features/chat/application/queries/get_chats/get_chats_query_validator.dart'
    as _i18;
import 'package:itrust_server/src/features/chat/application/queries/get_message/get_message_query_handler.dart'
    as _i177;
import 'package:itrust_server/src/features/chat/application/queries/get_message/get_message_query_validator.dart'
    as _i26;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_handler.dart'
    as _i178;
import 'package:itrust_server/src/features/chat/application/queries/get_messages/get_messages_query_validator.dart'
    as _i27;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_handler.dart'
    as _i194;
import 'package:itrust_server/src/features/chat/application/queries/listen_chats/listen_chats_query_validator.dart'
    as _i102;
import 'package:itrust_server/src/features/chat/application/queries/listen_messages/listen_messages_query_handler.dart'
    as _i195;
import 'package:itrust_server/src/features/chat/application/queries/listen_messages/listen_messages_query_validator.dart'
    as _i103;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_group_chat_request_json_converter.dart'
    as _i48;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/create_monologue_chat_request_json_converter.dart'
    as _i45;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chat_request_json_converter.dart'
    as _i72;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_chats_request_json_converter.dart'
    as _i73;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_message_request_json_converter.dart'
    as _i96;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/get_messages_request_json_converter.dart'
    as _i71;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_chats_request_json_converter.dart'
    as _i95;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/listen_messages_request_json_converter.dart'
    as _i89;
import 'package:itrust_server/src/features/chat/infrastructure/json_converters/send_message_request_json_converter.dart'
    as _i74;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mapster_registrar.dart'
    as _i157;
import 'package:itrust_server/src/features/chat/infrastructure/third_party/mediator_registrar.dart'
    as _i158;
import 'package:itrust_server/src/features/chat/presentation/contracts/contracts.dart'
    as _i44;
import 'package:itrust_server/src/features/chat/presentation/controllers/chat_controller.dart'
    as _i156;
import 'package:itrust_server/src/features/common/application/application.dart'
    as _i9;
import 'package:itrust_server/src/features/common/application/providers/date_time_provider.dart'
    as _i13;
import 'package:itrust_server/src/features/common/application/services/hash_service.dart'
    as _i41;
import 'package:itrust_server/src/features/common/common.dart' as _i202;
import 'package:itrust_server/src/features/common/infrastructure/app_services/hash_service.dart'
    as _i42;
import 'package:itrust_server/src/features/common/infrastructure/providers/date_time_provider.dart'
    as _i10;
import 'package:itrust_server/src/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i162;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_handler.dart'
    as _i173;
import 'package:itrust_server/src/features/feed/application/queries/get_feed/get_feed_query_validator.dart'
    as _i20;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_handler.dart'
    as _i187;
import 'package:itrust_server/src/features/feed/application/queries/get_tags/get_tags_query_validator.dart'
    as _i36;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_feed_request_json_converter.dart'
    as _i94;
import 'package:itrust_server/src/features/feed/infrastructure/json_converters/get_tags_request_json_converter.dart'
    as _i93;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mapster_registrar.dart'
    as _i167;
import 'package:itrust_server/src/features/feed/infrastructure/third_party/mediator_registrar.dart'
    as _i168;
import 'package:itrust_server/src/features/feed/presentation/contracts/contracts.dart'
    as _i92;
import 'package:itrust_server/src/features/feed/presentation/controllers/feed_controller.dart'
    as _i166;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_handler.dart'
    as _i176;
import 'package:itrust_server/src/features/media/application/queries/get_media/get_media_query_validator.dart'
    as _i25;
import 'package:itrust_server/src/features/media/infrastructure/json_converters/get_media_request_json_converter.dart'
    as _i91;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mapster_registrar.dart'
    as _i107;
import 'package:itrust_server/src/features/media/infrastructure/third_party/mediator_registrar.dart'
    as _i199;
import 'package:itrust_server/src/features/media/presentation/contracts/contracts.dart'
    as _i90;
import 'package:itrust_server/src/features/media/presentation/controllers/media_controller.dart'
    as _i198;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_handler.dart'
    as _i161;
import 'package:itrust_server/src/features/post/application/commands/comment_post/comment_post_command_validator.dart'
    as _i5;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_handler.dart'
    as _i165;
import 'package:itrust_server/src/features/post/application/commands/create_post/create_post_command_validator.dart'
    as _i8;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_handler.dart'
    as _i192;
import 'package:itrust_server/src/features/post/application/commands/like_post/like_post_command_validator.dart'
    as _i100;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_handler.dart'
    as _i193;
import 'package:itrust_server/src/features/post/application/commands/like_post_comment/like_post_comment_command_validator.dart'
    as _i101;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_handler.dart'
    as _i136;
import 'package:itrust_server/src/features/post/application/commands/unlike_post/unlike_post_command_validator.dart'
    as _i137;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_handler.dart'
    as _i138;
import 'package:itrust_server/src/features/post/application/commands/unlike_post_comment/unlike_post_comment_command_validator.dart'
    as _i139;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_handler.dart'
    as _i183;
import 'package:itrust_server/src/features/post/application/queries/get_post/get_post_query_validator.dart'
    as _i32;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_handler.dart'
    as _i181;
import 'package:itrust_server/src/features/post/application/queries/get_post_comment/get_post_comment_query_validator.dart'
    as _i30;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_handler.dart'
    as _i182;
import 'package:itrust_server/src/features/post/application/queries/get_post_comments/get_post_comments_query_validator.dart'
    as _i31;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_handler.dart'
    as _i191;
import 'package:itrust_server/src/features/post/application/queries/get_user_posts/get_user_posts_query_validator.dart'
    as _i40;
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
    as _i113;
import 'package:itrust_server/src/features/post/infrastructure/third_party/mediator_registrar.dart'
    as _i114;
import 'package:itrust_server/src/features/post/presentation/contracts/comment_post_request/comment_post_request.dart'
    as _i55;
import 'package:itrust_server/src/features/post/presentation/contracts/contracts.dart'
    as _i57;
import 'package:itrust_server/src/features/post/presentation/controllers/post_controller.dart'
    as _i112;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_handler.dart'
    as _i154;
import 'package:itrust_server/src/features/user/application/commands/cancel_friend_bid/cancel_friend_bid_command_validator.dart'
    as _i3;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_handler.dart'
    as _i120;
import 'package:itrust_server/src/features/user/application/commands/remove_friend/remove_friend_command_validator.dart'
    as _i121;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_handler.dart'
    as _i122;
import 'package:itrust_server/src/features/user/application/commands/remove_subscriber/remove_subscriber_command_validator.dart'
    as _i123;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_handler.dart'
    as _i124;
import 'package:itrust_server/src/features/user/application/commands/respond_friend_bid/respond_friend_bid_command_validator.dart'
    as _i125;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_handler.dart'
    as _i129;
import 'package:itrust_server/src/features/user/application/commands/send_friend_bid/send_friend_bid_command_validator.dart'
    as _i130;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_handler.dart'
    as _i140;
import 'package:itrust_server/src/features/user/application/commands/unsubscribe/unsubscribe_command_validator.dart'
    as _i141;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_handler.dart'
    as _i169;
import 'package:itrust_server/src/features/user/application/queries/get_all_users/get_all_users_query_validator.dart'
    as _i16;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_handler.dart'
    as _i21;
import 'package:itrust_server/src/features/user/application/queries/get_friend_bids_amount/get_friend_bids_amount_query_validator.dart'
    as _i22;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_handler.dart'
    as _i174;
import 'package:itrust_server/src/features/user/application/queries/get_friends/get_friends_query_validator.dart'
    as _i23;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_handler.dart'
    as _i175;
import 'package:itrust_server/src/features/user/application/queries/get_inbox_friend_bids/get_inbox_friend_bids_query_validator.dart'
    as _i24;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_handler.dart'
    as _i179;
import 'package:itrust_server/src/features/user/application/queries/get_outbox_friend_bids/get_outbox_friend_bids_query_validator.dart'
    as _i28;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_handler.dart'
    as _i180;
import 'package:itrust_server/src/features/user/application/queries/get_people_amount/get_people_amount_query_validator.dart'
    as _i29;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_handler.dart'
    as _i185;
import 'package:itrust_server/src/features/user/application/queries/get_subscribers/get_subscribers_query_validator.dart'
    as _i34;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_handler.dart'
    as _i186;
import 'package:itrust_server/src/features/user/application/queries/get_subscriptions/get_subscriptions_query_validator.dart'
    as _i35;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_handler.dart'
    as _i188;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_id/get_user_by_id_query_validator.dart'
    as _i37;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_handler.dart'
    as _i189;
import 'package:itrust_server/src/features/user/application/queries/get_user_by_nick/get_user_by_nick_query_validator.dart'
    as _i38;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_handler.dart'
    as _i190;
import 'package:itrust_server/src/features/user/application/queries/get_user_info/get_user_info_query_validator.dart'
    as _i39;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_for_user_request_json_converter.dart'
    as _i76;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_friend_bids_amount_request_json_converter.dart'
    as _i78;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_people_amount_request_json_converter.dart'
    as _i80;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_id_request_json_converter.dart'
    as _i84;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_user_by_nick_request_json_converter.dart'
    as _i85;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/get_users_request_json_converter.dart'
    as _i82;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/respond_friend_bid_request_json_converter.dart'
    as _i87;
import 'package:itrust_server/src/features/user/infrastructure/json_converters/user_action_request_json_converter.dart'
    as _i88;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mapster_registrar.dart'
    as _i143;
import 'package:itrust_server/src/features/user/infrastructure/third_party/mediator_registrar.dart'
    as _i144;
import 'package:itrust_server/src/features/user/presentation/contracts/contracts.dart'
    as _i83;
import 'package:itrust_server/src/features/user/presentation/contracts/get_for_user_request/get_for_user_request.dart'
    as _i75;
import 'package:itrust_server/src/features/user/presentation/contracts/get_friend_bids_amount_request/get_friend_bids_amount_request.dart'
    as _i77;
import 'package:itrust_server/src/features/user/presentation/contracts/get_people_amount_request/get_people_amount_request.dart'
    as _i79;
import 'package:itrust_server/src/features/user/presentation/contracts/get_users_request/get_users_request.dart'
    as _i81;
import 'package:itrust_server/src/features/user/presentation/contracts/respond_friend_bid_request/respond_friend_bid_request.dart'
    as _i86;
import 'package:itrust_server/src/features/user/presentation/controllers/user_controller.dart'
    as _i142;
import 'package:itrust_server/src/repositories/implementations/chat_repository.dart'
    as _i160;
import 'package:itrust_server/src/repositories/implementations/end_user_activity_repository.dart'
    as _i12;
import 'package:itrust_server/src/repositories/implementations/end_user_repository.dart'
    as _i15;
import 'package:itrust_server/src/repositories/implementations/media_repository.dart'
    as _i109;
import 'package:itrust_server/src/repositories/implementations/password_hash_repository.dart'
    as _i111;
import 'package:itrust_server/src/repositories/implementations/post_repository.dart'
    as _i116;
import 'package:itrust_server/src/repositories/implementations/rules_repository.dart'
    as _i128;
import 'package:itrust_server/src/repositories/implementations/staff_user_repository.dart'
    as _i132;
import 'package:itrust_server/src/repositories/implementations/tag_repository.dart'
    as _i134;
import 'package:itrust_server/src/repositories/implementations/token_repository.dart'
    as _i135;
import 'package:itrust_server/src/repositories/interfaces/chat_repository.dart'
    as _i159;
import 'package:itrust_server/src/repositories/interfaces/end_user_activity_repository.dart'
    as _i11;
import 'package:itrust_server/src/repositories/interfaces/interfaces.dart'
    as _i14;
import 'package:itrust_server/src/repositories/interfaces/media_repository.dart'
    as _i108;
import 'package:itrust_server/src/repositories/interfaces/post_repository.dart'
    as _i115;
import 'package:itrust_server/src/repositories/interfaces/rules_repository.dart'
    as _i127;
import 'package:itrust_server/src/repositories/interfaces/tag_repository.dart'
    as _i133;
import 'package:itrust_server/src/utils/jwt_settings.dart' as _i97;
import 'package:json_annotation/json_annotation.dart' as _i52;
import 'package:mapster/mapster.dart' as _i106;
import 'package:mediator/mediator.dart' as _i110;

import '../../../env/env_module.dart' as _i205;
import '../third_party/mapster_module.dart' as _i206;
import '../third_party/mediator_module.dart' as _i207;

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
  gh.singleton<_i17.GetChatQueryValidator>(_i17.GetChatQueryValidator());
  gh.singleton<_i18.GetChatsQueryValidator>(_i18.GetChatsQueryValidator());
  gh.singleton<_i19.GetDevicesQueryValidator>(_i19.GetDevicesQueryValidator());
  gh.singleton<_i20.GetFeedQueryValidator>(_i20.GetFeedQueryValidator());
  gh.singleton<_i21.GetFriendBidsAmountQueryHandler>(
      _i21.GetFriendBidsAmountQueryHandler(
          endUserRepository: gh<_i14.EndUserRepository>()));
  gh.singleton<_i22.GetFriendBidsAmountQueryValidator>(
      _i22.GetFriendBidsAmountQueryValidator());
  gh.singleton<_i23.GetFriendsQueryValidator>(_i23.GetFriendsQueryValidator());
  gh.singleton<_i24.GetInboxFriendBidsQueryValidator>(
      _i24.GetInboxFriendBidsQueryValidator());
  gh.singleton<_i25.GetMediaQueryValidator>(_i25.GetMediaQueryValidator());
  gh.singleton<_i26.GetMessageQueryValidator>(_i26.GetMessageQueryValidator());
  gh.singleton<_i27.GetMessagesQueryValidator>(
      _i27.GetMessagesQueryValidator());
  gh.singleton<_i28.GetOutboxFriendBidsQueryValidator>(
      _i28.GetOutboxFriendBidsQueryValidator());
  gh.singleton<_i29.GetPeopleAmountQueryValidator>(
      _i29.GetPeopleAmountQueryValidator());
  gh.singleton<_i30.GetPostCommentQueryValidator>(
      _i30.GetPostCommentQueryValidator());
  gh.singleton<_i31.GetPostCommentsQueryValidator>(
      _i31.GetPostCommentsQueryValidator());
  gh.singleton<_i32.GetPostQueryValidator>(_i32.GetPostQueryValidator());
  gh.singleton<_i33.GetRulesQueryValidator>(_i33.GetRulesQueryValidator());
  gh.singleton<_i34.GetSubscribersQueryValidator>(
      _i34.GetSubscribersQueryValidator());
  gh.singleton<_i35.GetSubscriptionsQueryValidator>(
      _i35.GetSubscriptionsQueryValidator());
  gh.singleton<_i36.GetTagsQueryValidator>(_i36.GetTagsQueryValidator());
  gh.singleton<_i37.GetUserByIDQueryValidator>(
      _i37.GetUserByIDQueryValidator());
  gh.singleton<_i38.GetUserByNickQueryValidator>(
      _i38.GetUserByNickQueryValidator());
  gh.singleton<_i39.GetUserInfoQueryValidator>(
      _i39.GetUserInfoQueryValidator());
  gh.singleton<_i40.GetUserPostsQueryValidator>(
      _i40.GetUserPostsQueryValidator());
  gh.singleton<_i41.HashService>(_i42.ProdHashService());
  gh.singleton<
          _i43.JsonConverter<_i44.CreateMonologueChatRequest,
              Map<String, Object?>>>(
      _i45.CreateMonologueChatRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i46.GetDevicesRequest, Map<String, Object?>>>(
      _i47.GetDevicesRequestJsonConverter());
  gh.singleton<
      _i43.JsonConverter<_i44.CreateGroupChatRequest,
          Map<String, Object?>>>(_i48.CreateGroupChatRequestJsonConverter());
  gh.singleton<
      _i43.JsonConverter<_i46.ChangePersonalInfoRequest,
          Map<String, Object?>>>(_i49.ChangePersonalInfoRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i50.VerifyTokenRequest, Map<String, Object?>>>(
      _i51.VerifyTokenRequestJsonConverter());
  gh.singleton<_i52.JsonConverter<_i50.RegisterRequest, Map<String, Object?>>>(
      _i53.RegisterRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i50.RefreshTokenRequest, Map<String, Object?>>>(
      _i54.RefreshTokenRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i55.CommentPostRequest, Map<String, Object?>>>(
      _i56.CommentPostRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i57.CreatePostRequest, Map<String, Object?>>>(
      _i58.CreatePostRequestJsonConverter());
  gh.singleton<
      _i43.JsonConverter<_i57.GetPostCommentsRequest,
          Map<String, Object?>>>(_i59.GetPostCommentsRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i57.GetPostCommentRequest, Map<String, Object?>>>(
      _i60.GetPostCommentRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i57.GetPostRequest, Map<String, Object?>>>(
      _i61.GetPostRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i57.GetUserPostsRequest, Map<String, Object?>>>(
      _i62.GetUserPostsRequestJsonConverter());
  gh.singleton<
      _i43.JsonConverter<_i57.LikePostCommentRequest,
          Map<String, Object?>>>(_i63.LikePostCommentRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i57.LikePostRequest, Map<String, Object?>>>(
      _i64.LikePostRequestJsonConverter());
  gh.singleton<
      _i43.JsonConverter<_i57.UnlikePostCommentRequest,
          Map<String, Object?>>>(_i65.UnlikePostCommentRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i57.UnlikePostRequest, Map<String, Object?>>>(
      _i66.UnlikePostRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i50.LogOutRequest, Map<String, Object?>>>(
      _i67.LogOutRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i50.LogInRequest, Map<String, Object?>>>(
      _i68.LogInRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i50.GetRulesRequest, Map<String, Object?>>>(
      _i69.GetRulesRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i46.RemoveDeviceRequest, Map<String, Object?>>>(
      _i70.RemoveDeviceRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i44.GetMessagesRequest, Map<String, Object?>>>(
      _i71.GetMessagesRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i44.GetChatRequest, Map<String, Object?>>>(
      _i72.GetChatRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i44.GetChatsRequest, Map<String, Object?>>>(
      _i73.GetChatsRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i44.SendMessageRequest, Map<String, Object?>>>(
      _i74.SendMessageRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i75.GetForUserRequest, Map<String, Object?>>>(
      _i76.GetForUserRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i77.GetFriendBidsAmountRequest,
              Map<String, Object?>>>(
      _i78.GetFriendBidsAmountRequestJsonConverter());
  gh.singleton<
      _i43.JsonConverter<_i79.GetPeopleAmountRequest,
          Map<String, Object?>>>(_i80.GetPeopleAmountRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i81.GetUsersRequest, Map<String, Object?>>>(
      _i82.GetUsersRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i83.GetUserByIDRequest, Map<String, Object?>>>(
      _i84.GetUserByIDRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i83.GetUserByNickRequest, Map<String, Object?>>>(
      _i85.GetUserByNickRequestJsonConverter());
  gh.singleton<
      _i43.JsonConverter<_i86.RespondFriendBidRequest,
          Map<String, Object?>>>(_i87.RespondFriendBidRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i83.UserActionRequest, Map<String, Object?>>>(
      _i88.UserActionRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i44.ListenMessagesRequest, Map<String, Object?>>>(
      _i89.ListenMessagesRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i90.GetMediaRequest, Map<String, Object?>>>(
      _i91.GetMediaRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i92.GetTagsRequest, Map<String, Object?>>>(
      _i93.GetTagsRequestJsonConverter());
  gh.singleton<_i43.JsonConverter<_i92.GetFeedRequest, Map<String, Object?>>>(
      _i94.GetFeedRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i44.ListenChatsRequest, Map<String, Object?>>>(
      _i95.ListenChatsRequestJsonConverter());
  gh.singleton<
          _i43.JsonConverter<_i44.GetMessageRequest, Map<String, Object?>>>(
      _i96.GetMessageRequestJsonConverter());
  gh.singleton<_i97.JwtSettings>(envModule.jwtSettings);
  gh.singleton<_i98.JwtTokenService>(
      _i99.ProdJwtTokenService(gh<_i97.JwtSettings>()));
  gh.singleton<_i100.LikePostCommandValidator>(
      _i100.LikePostCommandValidator());
  gh.singleton<_i101.LikePostCommentCommandValidator>(
      _i101.LikePostCommentCommandValidator());
  gh.singleton<_i102.ListenChatsQueryValidator>(
      _i102.ListenChatsQueryValidator());
  gh.singleton<_i103.ListenMessagesQueryValidator>(
      _i103.ListenMessagesQueryValidator());
  gh.singleton<_i104.LogInQueryValidator>(_i104.LogInQueryValidator());
  gh.singleton<_i105.LogOutCommandValidator>(_i105.LogOutCommandValidator());
  gh.singleton<_i106.Mapster>(mapsterModule.mapster);
  gh.singleton<_i107.MediaMapsterRegistrar>(
      _i107.MediaMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i108.MediaRepository>(
    _i109.DevMediaRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i110.Mediator>(mediatorModule.mediator);
  gh.singleton<_i14.PasswordHashRepository>(
    _i111.DevPasswordHashRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i112.PostController>(() => _i112.PostController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i113.PostMapsterRegistrar>(
      _i113.PostMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i114.PostMediatorRegistrar>(
      _i114.PostMediatorRegistrar(gh<_i110.Mediator>())..register());
  gh.singleton<_i115.PostRepository>(
    _i116.DevPostRepository(
      dateTimeProvider: gh<_i13.DateTimeProvider>(),
      mediaRepository: gh<_i108.MediaRepository>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i117.RefreshTokenCommandValidator>(
      _i117.RefreshTokenCommandValidator());
  gh.singleton<_i118.RegisterCommandValidator>(
      _i118.RegisterCommandValidator());
  gh.singleton<_i119.RemoveDeviceCommandValidator>(
      _i119.RemoveDeviceCommandValidator());
  gh.singleton<_i120.RemoveFriendCommandHandler>(
      _i120.RemoveFriendCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i121.RemoveFriendCommandValidator>(
      _i121.RemoveFriendCommandValidator());
  gh.singleton<_i122.RemoveSubscriberCommandHandler>(
      _i122.RemoveSubscriberCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i123.RemoveSubscriberCommandValidator>(
      _i123.RemoveSubscriberCommandValidator());
  gh.singleton<_i124.RespondFriendBidCommandHandler>(
      _i124.RespondFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i125.RespondFriendBidCommandValidator>(
      _i125.RespondFriendBidCommandValidator());
  gh.factory<_i126.RulesController>(() => _i126.RulesController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i127.RulesRepository>(
    _i128.DevRulesRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i129.SendFriendBidCommandHandler>(
      _i129.SendFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i130.SendFriendBidCommandValidator>(
      _i130.SendFriendBidCommandValidator());
  gh.singleton<_i131.SendMessageCommandValidator>(
      _i131.SendMessageCommandValidator());
  gh.singleton<_i14.StaffUserRepository>(
    _i132.TestStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i133.TagRepository>(
    _i134.DevTagRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i14.TokenRepository>(
    _i135.DevTokenRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i136.UnlikePostCommandHandler>(_i136.UnlikePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i137.UnlikePostCommandValidator>(
      _i137.UnlikePostCommandValidator());
  gh.singleton<_i138.UnlikePostCommentCommandHandler>(
      _i138.UnlikePostCommentCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i139.UnlikePostCommentCommandValidator>(
      _i139.UnlikePostCommentCommandValidator());
  gh.singleton<_i140.UnsubscribeCommandHandler>(_i140.UnsubscribeCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i141.UnsubscribeCommandValidator>(
      _i141.UnsubscribeCommandValidator());
  gh.factory<_i142.UserController>(() => _i142.UserController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i143.UserMapsterRegistrar>(
      _i143.UserMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i144.UserMediatorRegistrar>(
      _i144.UserMediatorRegistrar(gh<_i110.Mediator>())..register());
  gh.singleton<_i145.VerifyTokenQueryHandler>(_i145.VerifyTokenQueryHandler(
    jwtTokenService: gh<_i146.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
  ));
  gh.singleton<_i147.VerifyTokenQueryValidator>(
      _i147.VerifyTokenQueryValidator());
  gh.factory<_i148.AccountController>(() => _i148.AccountController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i149.AccountMapsterRegistrar>(
      _i149.AccountMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i150.AccountMediatorRegistrar>(
      _i150.AccountMediatorRegistrar(gh<_i110.Mediator>())..register());
  gh.factory<_i151.AuthController>(() => _i151.AuthController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i152.AuthMapsterRegistrar>(
      _i152.AuthMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i153.AuthMediatorRegistrar>(
      _i153.AuthMediatorRegistrar(gh<_i110.Mediator>())..register());
  gh.singleton<_i154.CancelFriendBidCommandHandler>(
      _i154.CancelFriendBidCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i155.ChangePersonalInfoCommandHandler>(
      _i155.ChangePersonalInfoCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.factory<_i156.ChatController>(() => _i156.ChatController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i157.ChatMapsterRegistrar>(
      _i157.ChatMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i158.ChatMediatorRegistrar>(
      _i158.ChatMediatorRegistrar(gh<_i110.Mediator>())..register());
  gh.singleton<_i159.ChatRepository>(
    _i160.DevChatRepository(
      mediaRepository: gh<_i108.MediaRepository>(),
      dateTimeProvider: gh<_i13.DateTimeProvider>(),
    ),
    registerFor: {_dev},
  );
  gh.singleton<_i161.CommentPostCommandHandler>(_i161.CommentPostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i162.CommonMapsterRegistrar>(
      _i162.CommonMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i163.CreateGroupChatCommandHandler>(
      _i163.CreateGroupChatCommandHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i164.CreateMonologueChatCommandHandler>(
      _i164.CreateMonologueChatCommandHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i165.CreatePostCommandHandler>(_i165.CreatePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.factory<_i166.FeedController>(() => _i166.FeedController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i167.FeedMapsterRegistrar>(
      _i167.FeedMapsterRegistrar(gh<_i106.Mapster>())..register());
  gh.singleton<_i168.FeedMediatorRegistrar>(
      _i168.FeedMediatorRegistrar(gh<_i110.Mediator>())..register());
  gh.singleton<_i169.GetAllUsersQueryHandler>(_i169.GetAllUsersQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i170.GetChatQueryHandler>(_i170.GetChatQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i171.GetChatsQueryHandler>(_i171.GetChatsQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i172.GetDevicesQueryHandler>(_i172.GetDevicesQueryHandler(
    tokenRepository: gh<_i14.TokenRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i173.GetFeedQueryHandler>(_i173.GetFeedQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i174.GetFriendsQueryHandler>(_i174.GetFriendsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i175.GetInboxFriendBidsQueryHandler>(
      _i175.GetInboxFriendBidsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i176.GetMediaQueryHandler>(
      _i176.GetMediaQueryHandler(mediaRepository: gh<_i14.MediaRepository>()));
  gh.singleton<_i177.GetMessageQueryHandler>(_i177.GetMessageQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i178.GetMessagesQueryHandler>(_i178.GetMessagesQueryHandler(
    mapster: gh<_i106.Mapster>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    chatRepository: gh<_i14.ChatRepository>(),
  ));
  gh.singleton<_i179.GetOutboxFriendBidsQueryHandler>(
      _i179.GetOutboxFriendBidsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i180.GetPeopleAmountQueryHandler>(
      _i180.GetPeopleAmountQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
  ));
  gh.singleton<_i181.GetPostCommentQueryHandler>(
      _i181.GetPostCommentQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i182.GetPostCommentsQueryHandler>(
      _i182.GetPostCommentsQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i183.GetPostQueryHandler>(_i183.GetPostQueryHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i184.GetRulesQueryHandler>(
      _i184.GetRulesQueryHandler(rulesRepository: gh<_i14.RulesRepository>()));
  gh.singleton<_i185.GetSubscribersQueryHandler>(
      _i185.GetSubscribersQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i186.GetSubscriptionsQueryHandler>(
      _i186.GetSubscriptionsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i187.GetTagsQueryHandler>(
      _i187.GetTagsQueryHandler(tagRepository: gh<_i14.TagRepository>()));
  gh.singleton<_i188.GetUserByIDQueryHandler>(_i188.GetUserByIDQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i189.GetUserByNickQueryHandler>(_i189.GetUserByNickQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i190.GetUserInfoQueryHandler>(_i190.GetUserInfoQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    endUserActivityRepository: gh<_i14.EndUserActivityRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i191.GetUserPostsQueryHandler>(_i191.GetUserPostsQueryHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i192.LikePostCommandHandler>(_i192.LikePostCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i193.LikePostCommentCommandHandler>(
      _i193.LikePostCommentCommandHandler(
    postRepository: gh<_i14.PostRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i194.ListenChatsQueryHandler>(_i194.ListenChatsQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i195.ListenMessagesQueryHandler>(
      _i195.ListenMessagesQueryHandler(
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  gh.singleton<_i196.LogInQueryHandler>(_i196.LogInQueryHandler(
    jwtTokenService: gh<_i146.JwtTokenService>(),
    hashService: gh<_i41.HashService>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    dateTimeProvider: gh<_i13.DateTimeProvider>(),
  ));
  gh.singleton<_i197.LogOutCommandHandler>(_i197.LogOutCommandHandler(
    jwtTokenService: gh<_i146.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
  ));
  gh.factory<_i198.MediaController>(() => _i198.MediaController(
        mediator: gh<_i110.Mediator>(),
        mapster: gh<_i106.Mapster>(),
      ));
  gh.singleton<_i199.MediaMediatorRegistrar>(
      _i199.MediaMediatorRegistrar(gh<_i110.Mediator>())..register());
  gh.singleton<_i200.RefreshTokenCommandHandler>(
      _i200.RefreshTokenCommandHandler(
    jwtTokenService: gh<_i146.JwtTokenService>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    dateTimeProvider: gh<_i13.DateTimeProvider>(),
  ));
  gh.singleton<_i201.RegisterCommandHandler>(_i201.RegisterCommandHandler(
    jwtTokenService: gh<_i146.JwtTokenService>(),
    hashService: gh<_i202.HashService>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    tokenRepository: gh<_i14.TokenRepository>(),
    dateTimeProvider: gh<_i202.DateTimeProvider>(),
  ));
  gh.singleton<_i203.RemoveDeviceCommandHandler>(
      _i203.RemoveDeviceCommandHandler(
    tokenRepository: gh<_i14.TokenRepository>(),
    passwordHashRepository: gh<_i14.PasswordHashRepository>(),
    endUserRepository: gh<_i14.EndUserRepository>(),
    hashService: gh<_i9.HashService>(),
  ));
  gh.singleton<_i204.SendMessageCommandHandler>(_i204.SendMessageCommandHandler(
    endUserRepository: gh<_i14.EndUserRepository>(),
    staffUserRepository: gh<_i14.StaffUserRepository>(),
    chatRepository: gh<_i14.ChatRepository>(),
    mediaRepository: gh<_i14.MediaRepository>(),
    mapster: gh<_i106.Mapster>(),
  ));
  return getIt;
}

class _$EnvModule extends _i205.EnvModule {}

class _$MapsterModule extends _i206.MapsterModule {}

class _$MediatorModule extends _i207.MediatorModule {}
