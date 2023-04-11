import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import '../../view_models/view_models.dart';
import 'get_feed_query.dart';

const _postLimit = 5;

@singleton
class GetFeedQueryHandler extends RequestHandler<GetFeedQuery,
    Either<List<DetailedException>, GetFeedResult>> {
  const GetFeedQueryHandler({
    required PostRepository postRepository,
    required Mapster mapster,
  })  : _postRepository = postRepository,
        _mapster = mapster;

  final PostRepository _postRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GetFeedResult>> handle(
    GetFeedQuery request,
  ) async {
    final posts = await _postRepository.getByFilter(
      limit: _postLimit,
      byAllUsers: true,
      startAfter: request.lastPostID,
    );

    return right(
      GetFeedResult(
        posts: posts
            .map((e) => _mapster.map2(e, request.userID, To<PostVM>()))
            .toList(),
      ),
    );
  }
}
