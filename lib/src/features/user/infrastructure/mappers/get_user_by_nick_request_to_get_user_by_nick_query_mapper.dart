import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByNickRequestToGetUserByNickQueryMapper
    extends TwoSourcesMapper<GetUserByNickRequest, String, GetUserByNickQuery> {
  GetUserByNickRequestToGetUserByNickQueryMapper(super.input);

  @override
  GetUserByNickQuery map() {
    return GetUserByNickQuery(
      nick: _nick,
    );
  }

  String get _nick => source2;
}
