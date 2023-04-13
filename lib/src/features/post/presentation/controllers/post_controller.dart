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

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query =
        _mapster.map3(getPostRequest, postID, user.id, To<GetPostQuery>());

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

  @Route.post('/<$_postIDParam>/like')
  Future<Response> likePost(Request request) async {
    late final LikePostRequest likePostRequest;
    try {
      likePostRequest = await parseRequest<LikePostRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final postID = request.params[_postIDParam];

    if (postID == null) {
      return problem([const InvalidRequest()]);
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command =
        _mapster.map3(likePostRequest, postID, user.id, To<LikePostCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostResponse>())),
    );
  }

  @Route.post('/<$_postIDParam>/unlike')
  Future<Response> unlikePost(Request request) async {
    late final UnlikePostRequest unlikePostRequest;
    try {
      unlikePostRequest = await parseRequest<UnlikePostRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final postID = request.params[_postIDParam];

    if (postID == null) {
      return problem([const InvalidRequest()]);
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command = _mapster.map3(
      unlikePostRequest,
      postID,
      user.id,
      To<UnlikePostCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostResponse>())),
    );
  }

  @Route.get('/<$_postIDParam>/comments')
  Future<Response> getPostComments(Request request) async {
    late final GetPostCommentsRequest getPostCommentsRequest;
    try {
      getPostCommentsRequest =
          await parseRequest<GetPostCommentsRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final postID = request.params[_postIDParam];

    if (postID == null) {
      return problem([const InvalidRequest()]);
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query = _mapster.map3(
      getPostCommentsRequest,
      postID,
      user.id,
      To<GetPostCommentsQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostCommentsResponse>())),
    );
  }

  @Route.post('/<$_postIDParam>/comment')
  Future<Response> commentPost(Request request) async {
    late final CommentPostRequest commentPostRequest;
    try {
      commentPostRequest = await parseRequest<CommentPostRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final postID = request.params[_postIDParam];

    if (postID == null) {
      return problem([const InvalidRequest()]);
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command = _mapster.map3(
      commentPostRequest,
      postID,
      user.id,
      To<CommentPostCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostCommentResponse>())),
    );
  }
}
