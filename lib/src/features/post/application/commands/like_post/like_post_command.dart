import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class LikePostCommand
    extends Request<Either<List<DetailedException>, PostResult>> {
  LikePostCommand({
    required this.userID,
    required this.postID,
  }) : super(LikePostCommand);

  final UserID userID;
  final PostID postID;
}
