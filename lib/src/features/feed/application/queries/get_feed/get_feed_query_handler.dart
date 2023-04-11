import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import 'get_feed_query.dart';

class GetFeedQueryHandler extends RequestHandler<GetFeedQuery,
    Either<List<DetailedException>, GetFeedResult>> {
  @override
  FutureOr<Either<List<DetailedException>, GetFeedResult>> handle(
    GetFeedQuery request,
  ) {
    // TODO: implement handle
    throw UnimplementedError();
  }
}
