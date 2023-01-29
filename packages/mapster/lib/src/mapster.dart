import 'mappers/mappers.dart';

class Mapster {
  final _mappers = <Mapper>[];

  void register<FROM, TO>(OneSourceMapper<FROM, TO> mapper) {
    _mappers.add(mapper);
  }

  TO map<FROM, TO>(FROM object) {
    OneSourceMapper? mapper;

    for (final m in _mappers) {
      if (m is OneSourceMapper<FROM, TO>) {
        mapper = m;
        break;
      }
    }

    if (mapper == null) {
      throw Exception('Mapper not found');
    }

    return mapper.map(object);
  }

  TO map2<FROM1, FROM2, TO>(FROM1 object1, FROM2 object2) {
    TwoSourcesMapper? mapper;

    for (final m in _mappers) {
      if (m is TwoSourcesMapper<FROM1, FROM2, TO>) {
        mapper = m;
        break;
      }
    }

    if (mapper == null) {
      throw Exception('Mapper not found');
    }

    return mapper.map(object1, object2);
  }
}
