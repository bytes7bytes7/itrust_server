import '../../../common/common.dart';
import '../../domain/domain.dart';

abstract class TokenRepository {
  Future<void> add({
    required TokenPair tokenPair,
    required UserID userID,
  });

  Future<UserID?> getUserID({required String accessToken});

  Future<TokenPair?> getTokenPair({required UserID userID});

  Future<TokenPair?> removeByUserID({required UserID userID});

  Future<UserID?> removeByToken({required String accessToken});
}
