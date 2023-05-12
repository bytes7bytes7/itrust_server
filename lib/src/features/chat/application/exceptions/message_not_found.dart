import '../../../common/application/exceptions/detailed_exception.dart';

class MessageNotFound extends DetailedException {
  const MessageNotFound()
      : super.unauthorized(
          code: 'message.notFound',
          description: 'Message not found.',
        );
}
