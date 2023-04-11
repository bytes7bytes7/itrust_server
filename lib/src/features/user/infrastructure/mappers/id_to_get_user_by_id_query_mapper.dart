import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class IDToGetUserQueryMapper
    extends TwoSourcesMapper<GetUserByIDRequest, String, GetUserByIDQuery> {
  IDToGetUserQueryMapper(super.input);

  @override
  GetUserByIDQuery map() {
    return GetUserByIDQuery(
      userID: UserID.fromString(_id),
    );
  }

  String get _id => source2;
}
