import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';

class IDToGetUserQueryMapper extends OneSourceMapper<String, GetUserByIDQuery> {
  IDToGetUserQueryMapper(super.input);

  @override
  GetUserByIDQuery map() {
    return GetUserByIDQuery(
      userID: UserID(_id),
    );
  }

  String get _id => source;
}
