import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByIDRequestIDToGetUserQueryMapper
    extends TwoSourcesMapper<GetUserByIDRequest, String, GetUserByIDQuery> {
  GetUserByIDRequestIDToGetUserQueryMapper(super.input);

  @override
  GetUserByIDQuery map() {
    return GetUserByIDQuery(
      userID: UserID(_id),
    );
  }

  String get _id => source2;
}
