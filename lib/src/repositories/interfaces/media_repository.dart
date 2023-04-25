import '../../features/common/application/dto/dto.dart';
import '../../features/common/domain/domain.dart';

abstract class MediaRepository {
  Future<Media> add(NewMedia newMedia);

  Future<Media?> get(MediaID id);
}
