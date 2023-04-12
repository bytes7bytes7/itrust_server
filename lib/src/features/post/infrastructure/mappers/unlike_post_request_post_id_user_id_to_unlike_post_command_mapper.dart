import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class UnlikePostRequestPostIDUserIDToUnlikePostCommandMapper
    extends ThreeSourcesMapper<UnlikePostRequest, String, UserID,
        UnlikePostCommand> {
  UnlikePostRequestPostIDUserIDToUnlikePostCommandMapper(super.input);

  @override
  UnlikePostCommand map() {
    return UnlikePostCommand(
      userID: _userID,
      postID: PostID.fromString(_postID),
    );
  }

  String get _postID => source2;

  UserID get _userID => source3;
}
