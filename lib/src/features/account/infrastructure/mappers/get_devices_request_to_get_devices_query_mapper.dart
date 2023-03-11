import 'package:mapster/mapster.dart';

import '../../application/queries/queries.dart';
import '../../presentation/contracts/contracts.dart';

class GetDevicesRequestToGetDevicesQueryMapper
    extends OneSourceMapper<GetDevicesRequest, GetDevicesQuery> {
  GetDevicesRequestToGetDevicesQueryMapper(super.input);

  @override
  GetDevicesQuery map() {
    return GetDevicesQuery();
  }
}
