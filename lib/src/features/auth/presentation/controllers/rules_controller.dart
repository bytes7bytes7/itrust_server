import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../common/application/exceptions/exceptions.dart';
import '../../../common/presentation/controllers/api_controller.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';

part 'rules_controller.g.dart';

@injectable
class RulesController extends ApiController {
  static const path = '/rules/';

  const RulesController({
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$RulesControllerRouter(this);

  @Route.get('/')
  Future<Response> getRules(Request request) async {
    late final GetRulesRequest getRulesRequest;
    try {
      getRulesRequest = await parseRequest<GetRulesRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final query = _mapster.map1(getRulesRequest, To<GetRulesQuery>());

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(_mapster.map1(r, To<RulesResponse>())),
    );
  }
}
