import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../common/common.dart';

part 'feed_controller.g.dart';

const feedRoute = '/feed/';

@injectable
class FeedController extends ApiController {
  Router get router => _$FeedControllerRouter(this);

  @Route.get('/')
  Future<Response> getFeed(Request request) async {
    return Response.ok([]);
  }
}
