import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class UnlikePostCommand
    extends Request<Either<List<DetailedException>, PostResult>> {
  UnlikePostCommand({
    required this.userID,
    required this.postID,
  }) : super(UnlikePostCommand);

  final UserID userID;
  final PostID postID;
}
