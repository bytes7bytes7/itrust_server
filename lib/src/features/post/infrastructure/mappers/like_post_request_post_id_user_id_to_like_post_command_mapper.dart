import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class LikePostRequestPostIDUserIDToLikePostCommandMapper
    extends ThreeSourcesMapper<LikePostRequest, String, UserID,
        LikePostCommand> {
  LikePostRequestPostIDUserIDToLikePostCommandMapper(super.input);

  @override
  LikePostCommand map() {
    return LikePostCommand(
      userID: _userID,
      postID: PostID.fromString(_postID),
    );
  }

  String get _postID => source2;

  UserID get _userID => source3;
}
