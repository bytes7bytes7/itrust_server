import 'dart:io';

import 'package:shelf/shelf.dart';

import '../../../../utils/utils.dart';
import '../../domain/domain.dart';

class ApiController {
  const ApiController();

  Future<Response> problem(DetailedException exception) async {
    int? status;

    switch (exception.type) {
      case DetailedExceptionType.conflict:
        status = HttpStatus.conflict;
        break;
      case DetailedExceptionType.validation:
        status = HttpStatus.badRequest;
        break;
      case DetailedExceptionType.notFound:
        status = HttpStatus.notFound;
        break;
      default:
    }

    return ResponseX.problem(
      problemDetails: ProblemDetails(
        status: status,
        detail: exception.description,
      ),
    );
  }
}
