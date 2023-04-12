import '../../features/common/domain/domain.dart';
import '../../features/post/application/dto/dto.dart';

abstract class MediaRepository {
  Future<Media> add(NewMedia newMedia);

  Future<Media?> get(MediaID id);
}
