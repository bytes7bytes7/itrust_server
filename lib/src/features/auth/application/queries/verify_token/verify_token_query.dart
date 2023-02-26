import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';

class VerifyTokenQuery
    extends Request<Either<List<DetailedException>, VerifyTokenResult>> {
  VerifyTokenQuery({
    required this.accessToken,
  }) : super(VerifyTokenQuery);

  final String accessToken;
}