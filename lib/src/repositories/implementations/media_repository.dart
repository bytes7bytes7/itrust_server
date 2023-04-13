import 'dart:collection';

import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

import '../../features/common/domain/domain.dart';
import '../../features/post/application/dto/dto.dart';
import '../interfaces/media_repository.dart';

@dev
@Singleton(as: MediaRepository)
class DevMediaRepository implements MediaRepository {
  // Key's type is `Media?` to be able to book place for new Media
  final _storage = HashMap<MediaID, Media?>();

  @override
  Future<Media> add(NewMedia newMedia) async {
    late MediaID id;
    do {
      id = MediaID.generate();
    } while (_storage.keys.contains(id));

    // book place
    _storage[id] = null;

    final media = Media(
      id: id,
      type: _getMediaType(newMedia.filename),
      encodedBytes: newMedia.encodedBytes,
    );

    _storage[id] = media;

    return media;
  }

  @override
  Future<Media?> get(MediaID id) async {
    return _storage[id];
  }

  MediaType _getMediaType(String filename) {
    final ext = extension(filename).toLowerCase();

    if (_photoExtensions.contains(ext)) {
      return MediaType.photo;
    }

    if (_videoExtensions.contains(ext)) {
      return MediaType.video;
    }

    return MediaType.doc;
  }

  final _photoExtensions = [
    '.jpg',
    '.jpeg',
    '.png',
    '.heic',
  ];

  final _videoExtensions = [
    '.mp4',
    '.avi',
    '.mov',
  ];
}
