import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import 'get_devices_query.dart';

@singleton
class GetDevicesQueryHandler extends RequestHandler<
    Either<List<DetailedException>, GetDevicesResult>, GetDevicesQuery> {
  const GetDevicesQueryHandler({
    required TokenRepository tokenRepository,
  }) : _tokenRepository = tokenRepository;

  final TokenRepository _tokenRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetDevicesResult>> handle(
    GetDevicesQuery request,
  ) async {
    final infoList = await _tokenRepository.getFullSessionInfoListByUserID(
      userID: request.userID,
    );

    DeviceSession? thisSession;
    final otherSessions = <DeviceSession>[];
    for (final info in infoList) {
      final session = DeviceSession(
        deviceName: '${info.deviceInfo.name}, ${info.deviceInfo.platform}',
        ip: info.ip,
        createdAt: info.createdAt,
      );

      if (info.tokenPair.access == request.accessToken) {
        thisSession = session;
      } else {
        otherSessions.add(session);
      }
    }

    if (thisSession == null) {
      return left([const CurrentSessionNotFound()]);
    }

    return right(
      GetDevicesResult(
        thisSession: thisSession,
        otherSessions: otherSessions,
      ),
    );
  }
}
