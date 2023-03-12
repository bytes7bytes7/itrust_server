import 'dart:collection';

import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../features/auth/domain/domain.dart';
import '../../features/common/common.dart';
import '../interfaces/interfaces.dart';

class _UserCred extends Equatable {
  const _UserCred({
    required this.tokenPair,
    required this.deviceInfo,
    required this.ip,
    required this.createdAt,
  });

  final TokenPair tokenPair;
  final DeviceInfo deviceInfo;
  final String ip;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        tokenPair,
        deviceInfo,
        ip,
        createdAt,
      ];
}

@test
@Singleton(as: TokenRepository)
class TestTokenRepository implements TokenRepository {
  final _storage = HashMap<UserID, List<_UserCred>>();

  @override
  Future<void> addOrUpdate({
    required TokenPair tokenPair,
    required UserID userID,
    required DeviceInfo deviceInfo,
    required String ip,
    required DateTime createdAt,
  }) async {
    final credentials = _storage[userID];
    final newCred = _UserCred(
      tokenPair: tokenPair,
      deviceInfo: deviceInfo,
      ip: ip,
      createdAt: createdAt,
    );

    if (credentials != null) {
      var updated = false;

      final iterator = credentials.iterator..moveNext();
      for (var i = 0; i < credentials.length; i++) {
        final cred = iterator.current;

        if (cred.deviceInfo == deviceInfo) {
          credentials[i] = newCred;
          updated = true;
          break;
        }

        iterator.moveNext();
      }

      if (!updated) {
        credentials.add(newCred);
      }
    } else {
      _storage[userID] = <_UserCred>[newCred];
    }
  }

  @override
  Future<UserID?> getUserIDByAccessToken({required String accessToken}) async {
    for (final note in _storage.entries) {
      for (final cred in note.value) {
        if (cred.tokenPair.access == accessToken) {
          return note.key;
        }
      }
    }

    return null;
  }

  @override
  Future<UserID?> getUserIDByRefreshToken({
    required String refreshToken,
  }) async {
    for (final note in _storage.entries) {
      for (final cred in note.value) {
        if (cred.tokenPair.refresh == refreshToken) {
          return note.key;
        }
      }
    }

    return null;
  }

  @override
  Future<DeviceInfo?> getDeviceInfoByAccessToken({
    required String accessToken,
  }) async {
    for (final note in _storage.entries) {
      for (final cred in note.value) {
        if (cred.tokenPair.access == accessToken) {
          return cred.deviceInfo;
        }
      }
    }

    return null;
  }

  @override
  Future<DeviceInfo?> getDeviceInfoByRefreshToken({
    required String refreshToken,
  }) async {
    for (final note in _storage.entries) {
      for (final cred in note.value) {
        if (cred.tokenPair.refresh == refreshToken) {
          return cred.deviceInfo;
        }
      }
    }

    return null;
  }

  @override
  Future<UserID?> removeTokenPairByAccessToken({
    required String accessToken,
  }) async {
    for (final note in _storage.entries) {
      final iterator = note.value.iterator..moveNext();

      for (var i = 0; i < note.value.length; i++) {
        final cred = iterator.current;

        if (cred.tokenPair.access == accessToken) {
          note.value.removeAt(i);
          return note.key;
        }

        iterator.moveNext();
      }
    }

    return null;
  }

  @override
  Future<UserID?> removeTokenPairByRefreshToken({
    required String refreshToken,
  }) async {
    for (final note in _storage.entries) {
      final iterator = note.value.iterator..moveNext();

      for (var i = 0; i < note.value.length; i++) {
        final cred = iterator.current;

        if (cred.tokenPair.refresh == refreshToken) {
          note.value.removeAt(i);
          return note.key;
        }

        iterator.moveNext();
      }
    }

    return null;
  }
}
