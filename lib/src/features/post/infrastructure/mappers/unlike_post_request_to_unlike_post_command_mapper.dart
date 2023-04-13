import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class UnlikePostRequestToUnlikePostCommandMapper
    extends TwoSourcesMapper<UnlikePostRequest, UserID, UnlikePostCommand> {
  UnlikePostRequestToUnlikePostCommandMapper(super.input);

  @override
  UnlikePostCommand map() {
    return UnlikePostCommand(
      userID: _userID,
      postID: PostID.fromString(_request.postID),
    );
  }

  UnlikePostRequest get _request => source1;

  UserID get _userID => source2;
}
