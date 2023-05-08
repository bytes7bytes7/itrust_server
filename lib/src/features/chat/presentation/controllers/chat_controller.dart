import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../../utils/extensions/extensions.dart';
import '../../../common/application/exceptions/exceptions.dart';
import '../../../common/presentation/controllers/api_controller.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'chat_controller.g.dart';

@injectable
class ChatController extends ApiController {
  static const path = '/chats/';

  const ChatController({
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$ChatControllerRouter(this);

  JsonEncoder get _jsonEncoder => const JsonEncoder();

  @Route.get('/')
  Future<Response> getChats(Request request) async {
    late final GetChatsRequest getChatsRequest;
    try {
      getChatsRequest = await parseRequest<GetChatsRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query = _mapster.map2(getChatsRequest, user.id, To<GetChatsQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<ChatsResponse>())),
    );
  }

  @Route.get('/listen')
  Future<Response> listenChats(Request request) async {
    return webSocketHandler((WebSocketChannel webSocket) async {
      late final ListenChatsRequest listenChatsRequest;
      try {
        listenChatsRequest = await parseRequest<ListenChatsRequest>(request);
      } catch (e) {
        return problem(
          [const InvalidBodyException()],
        );
      }

      final user = request.user;

      if (user == null) {
        return problem([const UserNotFound()]);
      }

      final query = _mapster.map3(
        listenChatsRequest,
        user.id,
        webSocket.stream,
        To<ListenChatsQuery>(),
      );

      final resultStream = await query.createStream(_mediator);

      resultStream.listen((event) {
        webSocket.sink.add(
          _jsonEncoder.convert(
            event.match(
              createProblemDetails,
              (r) => _mapster.map1(r, To<ChatEventResponse>()).toJson(),
            ),
          ),
        );
      });
    }).call(request);
  }

  @Route.post('/monologue')
  Future<Response> createMonologue(Request request) async {
    late final CreateMonologueChatRequest createMonologueChatRequest;
    try {
      createMonologueChatRequest =
          await parseRequest<CreateMonologueChatRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command = _mapster.map2(
      createMonologueChatRequest,
      user.id,
      To<CreateMonologueChatCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<ChatResponse>())),
    );
  }

  @Route.post('/group')
  Future<Response> createGroup(Request request) async {
    late final CreateGroupChatRequest createGroupChatRequest;
    try {
      createGroupChatRequest =
          await parseRequest<CreateGroupChatRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command = _mapster.map2(
      createGroupChatRequest,
      user.id,
      To<CreateGroupChatCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<ChatResponse>())),
    );
  }

  @Route.post('/send_message')
  Future<Response> sendMessage(Request request) async {
    late final SendMessageRequest sendMessageRequest;
    try {
      sendMessageRequest = await parseRequest<SendMessageRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command = _mapster.map2(
      sendMessageRequest,
      user.id,
      To<SendMessageCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<MessageResponse>())),
    );
  }
}
