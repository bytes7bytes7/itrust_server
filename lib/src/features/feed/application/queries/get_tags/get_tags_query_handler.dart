import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mediator/mediator.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/exceptions/detailed_exception.dart';
import '../../common/common.dart';
import 'get_tags_query.dart';

@singleton
class GetTagsQueryHandler extends RequestHandler<GetTagsQuery,
    Either<List<DetailedException>, GetTagsResult>> {
  const GetTagsQueryHandler({
    required TagRepository tagRepository,
  }) : _tagRepository = tagRepository;

  final TagRepository _tagRepository;

  @override
  FutureOr<Either<List<DetailedException>, GetTagsResult>> handle(
    GetTagsQuery request,
  ) async {
    final tags = await _tagRepository.getTags();

    return right(
      GetTagsResult(
        tags: tags,
      ),
    );
  }
}
