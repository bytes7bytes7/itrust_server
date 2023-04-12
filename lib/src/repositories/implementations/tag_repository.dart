import 'package:injectable/injectable.dart';

import '../interfaces/tag_repository.dart';

const _tags = [
  'nature',
  'sport',
  'business',
  'games',
];

@test
@Singleton(as: TagRepository)
class TestTagRepository implements TagRepository {
  @override
  Future<List<String>> getTags() async => _tags;
}
