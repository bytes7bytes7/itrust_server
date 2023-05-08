import '../../../common/application/exceptions/detailed_exception.dart';

class ChatNotFound extends DetailedException {
  const ChatNotFound()
      : super.unauthorized(
          code: 'cha.notFound',
          description: 'Chat not found.',
        );
}
