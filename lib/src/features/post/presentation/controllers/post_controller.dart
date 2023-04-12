import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/utils.dart';
import '../../../common/application/exceptions/exceptions.dart';
import '../../../common/presentation/controllers/api_controller.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'post_controller.g.dart';

const _postIDParam = 'postID';

@injectable
class PostController extends ApiController {
  static const path = '/post/';

  const PostController({
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$PostControllerRouter(this);

  @Route.get('/<$_postIDParam>')
  Future<Response> getPost(Request request) async {
    late final GetPostRequest getPostRequest;
    try {
      getPostRequest = await parseRequest<GetPostRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final postID = request.params[_postIDParam];

    if (postID == null) {
      return problem([const InvalidRequest()]);
    }

    final query = _mapster.map2(getPostRequest, postID, To<GetPostQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostResponse>())),
    );
  }

  @Route.post('/new')
  Future<Response> createPost(Request request) async {
    late final CreatePostRequest createPostRequest;
    try {
      createPostRequest = await parseRequest<CreatePostRequest>(request);
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
      createPostRequest,
      user.id,
      To<CreatePostCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostResponse>())),
    );
  }
}
