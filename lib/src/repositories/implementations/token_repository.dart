import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/auth/domain/domain.dart';
import '../../features/common/common.dart';
import '../interfaces/interfaces.dart';

@test
@Singleton(as: TokenRepository)
class TestTokenRepository implements TokenRepository {
  final _storage = HashMap<UserID, List<FullSessionInfo>>();

  @override
  Future<void> addOrUpdate({
    required TokenPair tokenPair,
    required UserID userID,
    required DeviceInfo deviceInfo,
    required String ip,
    required DateTime createdAt,
  }) async {
    final info = _storage[userID];
    final newInfo = FullSessionInfo(
      tokenPair: tokenPair,
      deviceInfo: deviceInfo,
      ip: ip,
      createdAt: createdAt,
    );

    if (info != null) {
      var updated = false;

      final iterator = info.iterator..moveNext();
      for (var i = 0; i < info.length; i++) {
        final cred = iterator.current;

        if (cred.deviceInfo == deviceInfo) {
          info[i] = newInfo;
          updated = true;
          break;
        }

        iterator.moveNext();
      }

      if (!updated) {
        info.add(newInfo);
      }
    } else {
      _storage[userID] = <FullSessionInfo>[newInfo];
    }
  }

  @override
  Future<UserID?> getUserIDByAccessToken({required String accessToken}) async {
    for (final note in _storage.entries) {
      for (final info in note.value) {
        if (info.tokenPair.access == accessToken) {
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
      for (final info in note.value) {
        if (info.tokenPair.refresh == refreshToken) {
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
      for (final info in note.value) {
        if (info.tokenPair.access == accessToken) {
          return info.deviceInfo;
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
      for (final info in note.value) {
        if (info.tokenPair.refresh == refreshToken) {
          return info.deviceInfo;
        }
      }
    }

    return null;
  }

  @override
  Future<List<FullSessionInfo>> getFullSessionInfoListByUserID({
    required UserID userID,
  }) async {
    return _storage[userID] ?? <FullSessionInfo>[];
  }

  @override
  Future<UserID?> removeTokenPairByAccessToken({
    required String accessToken,
  }) async {
    for (final note in _storage.entries) {
      final iterator = note.value.iterator..moveNext();

      for (var i = 0; i < note.value.length; i++) {
        final info = iterator.current;

        if (info.tokenPair.access == accessToken) {
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
        final info = iterator.current;

        if (info.tokenPair.refresh == refreshToken) {
          note.value.removeAt(i);
          return note.key;
        }

        iterator.moveNext();
      }
    }

    return null;
  }
}
