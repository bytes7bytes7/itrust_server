import '../../../common/common.dart';

class TokenExpired extends DetailedException {
  const TokenExpired()
      : super.unauthorized(
          code: 'token.expired',
          description: 'The token is expired.',
        );
}
