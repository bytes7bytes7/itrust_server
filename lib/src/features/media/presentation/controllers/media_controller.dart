import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mediator/mediator.dart' as mdtr;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/extensions/extensions.dart';
import '../../../common/application/exceptions/exceptions.dart';
import '../../../common/presentation/controllers/api_controller.dart';
import '../../application/application.dart';
import '../contracts/contracts.dart';
import '../contracts/json_keys.dart';

part 'media_controller.g.dart';

@injectable
class MediaController extends ApiController {
  static const path = '/media/';

  const MediaController({
    required mdtr.Mediator mediator,
    required Mapster mapster,
  })  : _mediator = mediator,
        _mapster = mapster;

  final mdtr.Mediator _mediator;
  final Mapster _mapster;

  Router get router => _$MediaControllerRouter(this);

  @Route.get('/<$mediaIDKey>')
  Future<Response> getMedia(Request request) async {
    late final GetMediaRequest getMediaRequest;
    try {
      getMediaRequest = await parseRequest<GetMediaRequest>(request);
    } catch (e) {
      return problem(
        [const InvalidBodyException()],
      );
    }

    final user = request.user;

    if (user == null) {
      return problem([const UserNotFound()]);
    }

    final query = _mapster.map2(
      getMediaRequest,
      user.id,
      To<GetMediaQuery>(),
    );

    final result = await query.sendTo(_mediator);

    return result.match(
      problem,
      (r) => ok(
        r.bytes,
        contentType: ContentType.binary,
      ),
    );
  }
}
