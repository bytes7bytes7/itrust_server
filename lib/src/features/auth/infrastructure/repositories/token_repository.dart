import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../application/application.dart';

@test
@Singleton(as: TokenRepository)
class TestTokenRepository implements TokenRepository {
  final _tokenToIDStorage = HashMap<String, UserID>();
  final _idToTokenStorage = HashMap<UserID, String>();

  @override
  Future<void> add({required String token, required UserID userID}) async {
    _tokenToIDStorage[token] = userID;
    _idToTokenStorage[userID] = token;
  }

  @override
  Future<UserID?> getUserID({required String token}) async {
    return _tokenToIDStorage[token];
  }

  @override
  Future<String?> getToken({required UserID userID}) async {
    return _idToTokenStorage[userID];
  }

  @override
  Future<String?> removeByUserID({required UserID userID}) async {
    final token = _idToTokenStorage.remove(userID);
    _tokenToIDStorage.remove(token);
    return token;
  }

  @override
  Future<UserID?> removeByToken({required String token}) async {
    final userID = _tokenToIDStorage.remove(token);
    _idToTokenStorage.remove(userID);
    return userID;
  }
}
