import 'dart:io';

import 'package:problem_details/problem_details.dart';
import 'package:shelf/shelf.dart';

import '../../../../utils/utils.dart';
import '../../domain/domain.dart';

class ApiController {
  const ApiController();

  Future<Response> problem(List<DetailedException> exceptions) async {
    if (exceptions.isEmpty) {
      return ResponseX.problem(
        problemDetails: ProblemDetails(),
      );
    }

    if (exceptions.any((e) => e.type == DetailedExceptionType.validation)) {
      return ResponseX.problem(
        problemDetails: _validation(exceptions),
      );
    }

    final error = exceptions.first;
    int? status;

    switch (error.type) {
      case DetailedExceptionType.failure:
        status = HttpStatus.badRequest;
        break;
      case DetailedExceptionType.unexpected:
        status = HttpStatus.internalServerError;
        break;
      case DetailedExceptionType.validation:
        status = HttpStatus.badRequest;
        break;
      case DetailedExceptionType.conflict:
        status = HttpStatus.conflict;
        break;
      case DetailedExceptionType.notFound:
        status = HttpStatus.notFound;
        break;
      case DetailedExceptionType.unauthorized:
        status = HttpStatus.unauthorized;
        break;
      default:
    }

    return ResponseX.problem(
      problemDetails: ProblemDetails(
        status: status,
        detail: error.description,
      ),
    );
  }
}

const _validationKey = 'errors';
const _validationTitle = 'One or more validation errors occurred.';

ProblemDetails _validation(List<DetailedException> exceptions) {
  final errorDict = {};

  for (final e in exceptions) {
    final list = errorDict[e.code] as List<String>?;

    if (list != null) {
      list.add(e.description);
    } else {
      errorDict[e.code] = <String>[e.description];
    }
  }

  final p = ProblemDetails(
    status: HttpStatus.badRequest,
    title: _validationTitle,
    extensions: {
      _validationKey: errorDict,
    },
  );

  return p;
}
