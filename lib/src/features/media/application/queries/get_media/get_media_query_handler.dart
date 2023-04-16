import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/exceptions.dart';
import '../../common/common.dart';
import 'get_media_query.dart';

@singleton
class GetMediaQueryHandler extends RequestHandler<GetMediaQuery,
    Either<List<DetailedException>, MediaResult>> {
  const GetMediaQueryHandler({
    required MediaRepository mediaRepository,
  }) : _mediaRepository = mediaRepository;

  final MediaRepository _mediaRepository;

  @override
  FutureOr<Either<List<DetailedException>, MediaResult>> handle(
    GetMediaQuery request,
  ) async {
    final media = await _mediaRepository.get(request.mediaID);

    if (media == null) {
      return left(
        [const MediaNotFound()],
      );
    }

    return right(
      MediaResult(
        encodedBytes: media.encodedBytes,
      ),
    );
  }
}
