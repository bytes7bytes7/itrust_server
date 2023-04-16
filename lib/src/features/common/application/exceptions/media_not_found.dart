import 'detailed_exception.dart';

class MediaNotFound extends DetailedException {
  const MediaNotFound()
      : super.notFound(
          code: 'media.notFound',
          description: 'Media not found.',
        );
}
