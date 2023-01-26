import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class PostAPI {
  Router get router {
    return Router()..post('/', (Request req) {});
  }
}
