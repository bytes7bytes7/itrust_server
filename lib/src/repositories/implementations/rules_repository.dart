import 'package:injectable/injectable.dart';

import '../interfaces/rules_repository.dart';

@dev
@Singleton(as: RulesRepository)
class DevRulesRepository implements RulesRepository {
  final _rules = 'Plug text';

  @override
  Future<String> get() async {
    return _rules;
  }
}
