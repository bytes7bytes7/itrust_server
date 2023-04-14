import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByNickRequestToGetUserByNickQueryMapper
    extends TwoSourcesMapper<GetUserByNickRequest, UserID, GetUserByNickQuery> {
  GetUserByNickRequestToGetUserByNickQueryMapper(super.input);

  @override
  GetUserByNickQuery map() {
    return GetUserByNickQuery(
      nick: _request.userNick,
      userID: _userID,
    );
  }

  GetUserByNickRequest get _request => source1;

  UserID get _userID => source2;
}
