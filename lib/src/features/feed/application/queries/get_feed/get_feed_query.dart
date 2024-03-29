import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/common/posts_result.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';

class GetFeedQuery
    extends Request<Either<List<DetailedException>, PostsResult>> {
  GetFeedQuery({
    required this.userID,
    required this.lastPostID,
  }) : super(GetFeedQuery);

  final UserID userID;
  final PostID? lastPostID;
}
