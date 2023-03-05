import 'package:mapster/mapster.dart';

import '../../application/application.dart';

class NickToGetUserByNickQueryMapper
    extends OneSourceMapper<String, GetUserByNickQuery> {
  NickToGetUserByNickQueryMapper(super.input);

  @override
  GetUserByNickQuery map() {
    return GetUserByNickQuery(
      nick: _nick,
    );
  }

  String get _nick => source;
}
