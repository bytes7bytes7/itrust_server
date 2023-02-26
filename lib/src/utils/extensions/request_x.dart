import '../../../itrust_server.dart';

const _userContextKey = 'user';

extension RequestX on Request {
  Request setUser(EndUser user) {
    final newContext = Map<String, Object?>.from(context)
      ..[_userContextKey] = user;

    return change(context: newContext);
  }

  Request removeUser() {
    final newContext = Map<String, Object?>.from(context)
      ..remove(_userContextKey);

    return change(context: newContext);
  }

  EndUser? get user {
    return context[_userContextKey] as EndUser?;
  }
}
