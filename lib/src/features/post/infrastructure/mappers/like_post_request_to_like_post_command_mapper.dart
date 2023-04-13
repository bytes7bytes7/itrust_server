import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class LikePostRequestToLikePostCommandMapper
    extends TwoSourcesMapper<LikePostRequest, UserID, LikePostCommand> {
  LikePostRequestToLikePostCommandMapper(super.input);

  @override
  LikePostCommand map() {
    return LikePostCommand(
      userID: _userID,
      postID: PostID.fromString(_request.postID),
    );
  }

  LikePostRequest get _request => source1;

  UserID get _userID => source2;
}
