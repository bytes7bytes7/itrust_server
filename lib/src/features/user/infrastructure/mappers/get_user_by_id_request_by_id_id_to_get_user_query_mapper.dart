import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByIDRequestByIDIDToGetUserQueryMapper
    extends TwoSourcesMapper<GetUserRequestByID, String, GetUserByIDQuery> {
  GetUserByIDRequestByIDIDToGetUserQueryMapper(super.input);

  @override
  GetUserByIDQuery map() {
    return GetUserByIDQuery(
      userID: UserID(_id),
    );
  }

  String get _id => source2;
}
