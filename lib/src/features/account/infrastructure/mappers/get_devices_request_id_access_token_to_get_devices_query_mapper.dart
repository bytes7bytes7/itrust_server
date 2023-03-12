import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/queries.dart';
import '../../presentation/contracts/contracts.dart';

class GetDevicesRequestIDAccessTokenToGetDevicesQueryMapper extends ThreeSourcesMapper<
    GetDevicesRequest, UserID, String, GetDevicesQuery> {
  GetDevicesRequestIDAccessTokenToGetDevicesQueryMapper(super.input);

  @override
  GetDevicesQuery map() {
    return GetDevicesQuery(
      userID: _userID,
      accessToken: _accessToken,
    );
  }

  UserID get _userID => source2;

  String get _accessToken => source3;
}
