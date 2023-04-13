import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import 'get_rules_query.dart';

@singleton
class GetRulesQueryHandler extends RequestHandler<GetRulesQuery,
    Either<List<DetailedException>, RulesResult>> {
  const GetRulesQueryHandler({
    required RulesRepository rulesRepository,
  }) : _rulesRepository = rulesRepository;

  final RulesRepository _rulesRepository;

  @override
  FutureOr<Either<List<DetailedException>, RulesResult>> handle(
    GetRulesQuery request,
  ) async {
    final rules = await _rulesRepository.get();

    return right(
      RulesResult(
        rules: rules,
      ),
    );
  }
}
