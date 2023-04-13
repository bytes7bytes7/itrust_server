import 'package:injectable/injectable.dart';

import '../interfaces/tag_repository.dart';

@dev
@Singleton(as: TagRepository)
class DevTagRepository implements TagRepository {
  final _storage = [
    'nature',
    'sport',
    'business',
    'games',
  ];

  @override
  Future<List<String>> getTags() async {
    return List.of(_storage);
  }
}
