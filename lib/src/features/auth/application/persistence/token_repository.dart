import '../../../common/common.dart';

abstract class TokenRepository {
  Future<void> add({
    required String token,
    required UserID userID,
  });

  Future<UserID?> getUserID({required String token});

  Future<String?> getToken({required UserID userID});

  Future<String?> removeByUserID({required UserID userID});

  Future<UserID?> removeByToken({required String token});
}
