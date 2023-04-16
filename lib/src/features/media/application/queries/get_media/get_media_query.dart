import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class GetMediaQuery
    extends Request<Either<List<DetailedException>, MediaResult>> {
  GetMediaQuery({
    required this.userID,
    required this.mediaID,
  }) : super(GetMediaQuery);

  final UserID userID;
  final MediaID mediaID;
}
