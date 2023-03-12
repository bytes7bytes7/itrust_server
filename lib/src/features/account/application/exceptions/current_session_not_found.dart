import '../../../common/application/exceptions/detailed_exception.dart';

class CurrentSessionNotFound extends DetailedException {
  const CurrentSessionNotFound()
      : super.unexpected(
          code: 'session.notFound',
          description: 'Current session is not found.',
        );
}
