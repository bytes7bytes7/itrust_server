import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/common.dart';
import '../../common/change_personal_info_result.dart';

class ChangePersonalInfoCommand
    extends Request<Either<List<DetailedException>, ChangePersonalInfoResult>> {
  ChangePersonalInfoCommand({
    required this.userID,
    required this.firstName,
    required this.lastName,
  }) : super(ChangePersonalInfoCommand);

  final UserID userID;
  final String firstName;
  final String lastName;
}
