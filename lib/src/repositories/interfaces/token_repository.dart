import '../../features/auth/domain/domain.dart';
import '../../features/common/common.dart';

abstract class TokenRepository {
  Future<void> addOrUpdate({
    required TokenPair tokenPair,
    required UserID userID,
    required DeviceInfo deviceInfo,
    required String ip,
    required DateTime createdAt,
  });

  Future<UserID?> getUserIDByAccessToken({required String accessToken});

  Future<UserID?> getUserIDByRefreshToken({required String refreshToken});

  Future<DeviceInfo?> getDeviceInfoByAccessToken({required String accessToken});

  Future<DeviceInfo?> getDeviceInfoByRefreshToken({
    required String refreshToken,
  });

  Future<List<FullSessionInfo>> getFullSessionInfoListByUserID({
    required UserID userID,
  });

  Future<UserID?> removeTokenPairByAccessToken({required String accessToken});

  Future<UserID?> removeTokenPairByRefreshToken({required String refreshToken});
}
