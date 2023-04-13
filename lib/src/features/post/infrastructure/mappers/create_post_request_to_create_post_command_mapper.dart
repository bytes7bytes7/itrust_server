import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/commands/commands.dart';
import '../../presentation/contracts/contracts.dart';

class CreatePostRequestToCreatePostCommandMapper
    extends TwoSourcesMapper<CreatePostRequest, UserID, CreatePostCommand> {
  CreatePostRequestToCreatePostCommandMapper(super.input);

  @override
  CreatePostCommand map() {
    return CreatePostCommand(
      userID: _userID,
      post: _request.post,
    );
  }

  CreatePostRequest get _request => source1;

  UserID get _userID => source2;
}
