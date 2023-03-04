import '../../../common/common.dart';
import '../../domain/domain.dart';

abstract class TokenRepository {
  Future<void> addOrUpdate({
    required TokenPair tokenPair,
    required UserID userID,
    required String deviceInfo,
  });

  Future<UserID?> getUserID({required String accessToken});

  Future<String?> getDeviceInfo({required String accessToken});

  Future<UserID?> removeTokenPair({required String accessToken});
}
