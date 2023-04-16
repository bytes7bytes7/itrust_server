import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/utils.dart';
import '../../../common/common.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'feed_controller.g.dart';

@injectable
class FeedController extends ApiController {
  static const path = '/feed/';

  const FeedController({
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$FeedControllerRouter(this);

  @Route.get('/')
  Future<Response> getFeed(Request request) async {
    late final GetFeedRequest getFeedRequest;
    try {
      getFeedRequest = await parseRequest<GetFeedRequest>(request);
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
      getFeedRequest,
      user.id,
      To<GetFeedQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<PostsResponse>())),
    );
  }

  @Route.get('/tags')
  Future<Response> getTags(Request request) async {
    late final GetTagsRequest getTagsRequest;
    try {
      getTagsRequest = await parseRequest<GetTagsRequest>(request);
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
      getTagsRequest,
      user.id,
      To<GetTagsQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<GetTagsResponse>())),
    );
  }
}
