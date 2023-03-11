import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class NickToGetUserByNickQueryMapper
    extends TwoSourcesMapper<GetUserByNickRequest, String, GetUserByNickQuery> {
  NickToGetUserByNickQueryMapper(super.input);

  @override
  GetUserByNickQuery map() {
    return GetUserByNickQuery(
      nick: _nick,
    );
  }

  String get _nick => source2;
}
