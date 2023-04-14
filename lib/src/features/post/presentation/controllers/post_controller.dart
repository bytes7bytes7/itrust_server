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

  @Route.get('/<$postIDKey>')
  Future<Response> getPost(Request request) async {
    late final GetPostRequest getPostRequest;
    try {
      getPostRequest = await parseRequest<GetPostRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query = _mapster.map2(getPostRequest, user.id, To<GetPostQuery>());

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
      (r) => created(_mapster.map1(r, To<PostResponse>())),
    );
  }

  @Route.post('/<$postIDKey>/like')
  Future<Response> likePost(Request request) async {
    late final LikePostRequest likePostRequest;
    try {
      likePostRequest = await parseRequest<LikePostRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final command =
        _mapster.map2(likePostRequest, user.id, To<LikePostCommand>());

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostResponse>())),
    );
  }

  @Route.post('/<$postIDKey>/unlike')
  Future<Response> unlikePost(Request request) async {
    late final UnlikePostRequest unlikePostRequest;
    try {
      unlikePostRequest = await parseRequest<UnlikePostRequest>(request);
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
      unlikePostRequest,
      user.id,
      To<UnlikePostCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostResponse>())),
    );
  }

  @Route.get('/<$postIDKey>/comments')
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

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query = _mapster.map2(
      getPostCommentsRequest,
      user.id,
      To<GetPostCommentsQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostCommentsResponse>())),
    );
  }

  @Route.post('/<$postIDKey>/comment')
  Future<Response> commentPost(Request request) async {
    late final CommentPostRequest commentPostRequest;
    try {
      commentPostRequest = await parseRequest<CommentPostRequest>(request);
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
      commentPostRequest,
      user.id,
      To<CommentPostCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => created(_mapster.map1(r, To<PostCommentsResponse>())),
    );
  }

  @Route.get('/<$postIDKey>/comment/<$commentIDKey>')
  Future<Response> getPostComment(Request request) async {
    late final GetPostCommentRequest getPostCommentRequest;
    try {
      getPostCommentRequest =
          await parseRequest<GetPostCommentRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query = _mapster.map2(
      getPostCommentRequest,
      user.id,
      To<GetPostCommentQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostCommentResponse>())),
    );
  }

  @Route.post('/<$postIDKey>/comment/<$commentIDKey>/like')
  Future<Response> likePostComment(Request request) async {
    late final LikePostCommentRequest likePostCommentRequest;
    try {
      likePostCommentRequest =
          await parseRequest<LikePostCommentRequest>(request);
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
      likePostCommentRequest,
      user.id,
      To<LikePostCommentCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostCommentResponse>())),
    );
  }

  @Route.post('/<$postIDKey>/comment/<$commentIDKey>/unlike')
  Future<Response> unlikePostComment(Request request) async {
    late final UnlikePostCommentRequest unlikePostCommentRequest;
    try {
      unlikePostCommentRequest =
          await parseRequest<UnlikePostCommentRequest>(request);
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
      unlikePostCommentRequest,
      user.id,
      To<UnlikePostCommentCommand>(),
    );

    final result = await command.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostCommentResponse>())),
    );
  }
}
