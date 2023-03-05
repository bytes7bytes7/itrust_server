import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class GetUserByNickRequestNickToGetUserByNickQueryMapper
    extends TwoSourcesMapper<GetUserByNickRequest, String, GetUserByNickQuery> {
  GetUserByNickRequestNickToGetUserByNickQueryMapper(super.input);

  @override
  GetUserByNickQuery map() {
    return GetUserByNickQuery(
      nick: _nick,
    );
  }

  String get _nick => source2;
}
