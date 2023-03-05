import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserRequestIDToGetUserQueryMapper
    extends TwoSourcesMapper<GetUserRequest, String, GetUserQuery> {
  GetUserRequestIDToGetUserQueryMapper(super.input);

  @override
  GetUserQuery map() {
    return GetUserQuery(
      userID: UserID(_id),
    );
  }

  String get _id => source2;
}
