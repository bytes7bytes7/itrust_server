import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../../domain/domain.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../view_models/view_models.dart';
import 'get_devices_query.dart';

@singleton
class GetDevicesQueryHandler extends RequestHandler<GetDevicesQuery,
    Either<List<DetailedException>, GetDevicesResult>> {
  const GetDevicesQueryHandler({
    required TokenRepository tokenRepository,
    required Mapster mapster,
  })  : _tokenRepository = tokenRepository,
        _mapster = mapster;

  final TokenRepository _tokenRepository;
  final Mapster _mapster;

  @override
  FutureOr<Either<List<DetailedException>, GetDevicesResult>> handle(
    GetDevicesQuery request,
  ) async {
    final sessions = await _tokenRepository.getSessionsByUserID(
      userID: request.userID,
    );

    final thisSession = await _tokenRepository.getSessionByUserIDAccessToken(
      userID: request.userID,
      accessToken: request.accessToken,
    );

    final otherSessions = <DeviceSession>[];
    for (final session in sessions) {
      if (session.id != thisSession?.id) {
        otherSessions.add(session);
      }
    }

    if (thisSession == null) {
      return left([const CurrentSessionNotFound()]);
    }

    return right(
      GetDevicesResult(
        thisSession: _mapster.map1(thisSession, To<DeviceSessionVM>()),
        otherSessions: otherSessions
            .map((e) => _mapster.map1(e, To<DeviceSessionVM>()))
            .toList(),
      ),
    );
  }
}
