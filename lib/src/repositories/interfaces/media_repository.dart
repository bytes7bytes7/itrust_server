import '../../features/feed/application/dto/dto.dart';
import '../../features/feed/domain/domain.dart';

abstract class MediaRepository {
  Future<Media> add(NewMedia newMedia);

  Future<Media?> get(MediaID id);
}
