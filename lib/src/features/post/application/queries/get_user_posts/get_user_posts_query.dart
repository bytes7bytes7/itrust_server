import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/common/posts_result.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';

class GetUserPostsQuery
    extends Request<Either<List<DetailedException>, PostsResult>> {
  GetUserPostsQuery({
    required this.userID,
    required this.byUserID,
    required this.lastPostID,
  }) : super(GetUserPostsQuery);

  final UserID userID;
  final UserID byUserID;
  final PostID? lastPostID;
}
