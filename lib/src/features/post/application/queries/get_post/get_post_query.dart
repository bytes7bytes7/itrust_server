import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetPostQuery
    extends Request<Either<List<DetailedException>, PostResult>> {
  GetPostQuery({
    required this.userID,
    required this.postID,
  }) : super(GetPostQuery);

  final UserID userID;
  final PostID postID;
}
