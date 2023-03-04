import '../../../common/common.dart';
import '../../domain/domain.dart';

abstract class TokenRepository {
  Future<void> addOrUpdate({
    required TokenPair tokenPair,
    required UserID userID,
    required String deviceInfo,
  });

  Future<UserID?> getUserIDByAccessToken({required String accessToken});

  Future<UserID?> getUserIDByRefreshToken({required String refreshToken});

  Future<String?> getDeviceInfoByAccessToken({required String accessToken});

  Future<String?> getDeviceInfoByRefreshToken({required String refreshToken});

  Future<UserID?> removeTokenPairByAccessToken({required String accessToken});

  Future<UserID?> removeTokenPairByRefreshToken({required String refreshToken});
}
