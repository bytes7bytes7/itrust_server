import 'package:fpdart/fpdart.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/dto/new_media/new_media.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../../common/domain/domain.dart';
import '../../common/common.dart';

class CreateMonologueChatCommand
    extends Request<Either<List<DetailedException>, ChatResult>> {
  CreateMonologueChatCommand({
    required this.userID,
    required this.title,
    required this.iconName,
    required this.image,
  }) : super(CreateMonologueChatCommand);

  final UserID userID;
  final String title;
  final String? iconName;
  final NewMedia? image;
}
