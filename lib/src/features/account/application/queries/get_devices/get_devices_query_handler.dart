import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import 'get_devices_query.dart';

@singleton
class GetDevicesQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GetDevicesResult>, GetDevicesQuery> {
  @override
  FutureOr<Either<List<DetailedException>, GetDevicesResult>> handle(
    GetDevicesQuery request,
  ) {
    // TODO: implement
    return right(
      GetDevicesResult(
        thisSession: DeviceSession(
          deviceName: 'Device name',
          createdAt: DateTime.now(),
          ip: '192.234.32.62',
        ),
        otherSessions: [],
      ),
    );
  }
}
