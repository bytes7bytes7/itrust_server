import '../../../common/application/exceptions/detailed_exception.dart';

class MessageAlreadyRead extends DetailedException {
  const MessageAlreadyRead()
      : super.conflict(
          code: 'message.isAlreadyRead',
          description: 'This message is already read.',
        );
}
