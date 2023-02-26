import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: TokenRepository)
class TestTokenRepository implements TokenRepository {
  final _tokenPairToIDStorage = HashMap<TokenPair, UserID>();
  final _idToTokenPairStorage = HashMap<UserID, TokenPair>();
  final _accessTokenToIDStorage = HashMap<String, UserID>();

  @override
  Future<void> add({
    required TokenPair tokenPair,
    required UserID userID,
  }) async {
    _tokenPairToIDStorage[tokenPair] = userID;
    _idToTokenPairStorage[userID] = tokenPair;
    _accessTokenToIDStorage[tokenPair.access] = userID;
  }

  @override
  Future<UserID?> getUserID({required String accessToken}) async {
    return _accessTokenToIDStorage[accessToken];
  }

  @override
  Future<TokenPair?> getTokenPair({required UserID userID}) async {
    return _idToTokenPairStorage[userID];
  }

  @override
  Future<TokenPair?> removeByUserID({required UserID userID}) async {
    final tokenPair = _idToTokenPairStorage.remove(userID);

    if (tokenPair != null) {
      _tokenPairToIDStorage.remove(tokenPair);
      _accessTokenToIDStorage.remove(tokenPair.access);
    }

    return tokenPair;
  }

  @override
  Future<UserID?> removeByToken({required String accessToken}) async {
    final userID = _accessTokenToIDStorage.remove(accessToken);

    if (userID != null) {
      final tokenPair = _idToTokenPairStorage.remove(userID);

      if (tokenPair != null) {
        _tokenPairToIDStorage.remove(tokenPair);
      }
    }

    return userID;
  }
}
