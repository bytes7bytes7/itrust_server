import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: TokenRepository)
class TestTokenRepository implements TokenRepository {
  final _tokenPairToIDStorage = HashMap<TokenPair, UserID>();
  final _accessTokenToIDStorage = HashMap<String, UserID>();
  final _idToTokenPairStorage = HashMap<UserID, TokenPair>();
  final _accessTokenToDeviceInfoStorage = HashMap<String, String>();

  @override
  Future<void> add({
    required TokenPair tokenPair,
    required UserID userID,
    required String deviceInfo,
  }) async {
    _tokenPairToIDStorage[tokenPair] = userID;
    _accessTokenToIDStorage[tokenPair.access] = userID;
    _idToTokenPairStorage[userID] = tokenPair;
    _accessTokenToDeviceInfoStorage[tokenPair.access] = deviceInfo;
  }

  @override
  Future<UserID?> getUserID({required String accessToken}) async {
    return _accessTokenToIDStorage[accessToken];
  }

  @override
  Future<String?> getDeviceInfo({required String accessToken}) async {
    return _accessTokenToDeviceInfoStorage[accessToken];
  }

  @override
  Future<UserID?> removeTokenPair({required String accessToken}) async {
    _accessTokenToDeviceInfoStorage.remove(accessToken);

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
