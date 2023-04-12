import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';
import '../../dto/dto.dart';

class CreatePostCommand
    extends Request<Either<List<DetailedException>, PostResult>> {
  CreatePostCommand({
    required this.userID,
    required this.post,
  }) : super(CreatePostCommand);

  final UserID userID;
  final NewPost post;
}
