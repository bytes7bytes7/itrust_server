import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:problem_details/problem_details.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../utils/utils.dart';
import '../../application/exceptions/detailed_exception.dart';

final _getIt = GetIt.instance;

class ApiController {
  const ApiController();

  JsonEncoder get _jsonEncoder => const JsonEncoder();

  JsonDecoder get _jsonDecoder => const JsonDecoder();

  Future<T> parseRequest<T extends Object>(Request request) async {
    final rawBody = await request.readAsString();
    final jsonBody = _jsonDecoder.convert(rawBody.isNotEmpty ? rawBody : '{}');

    final jsonConverter = _getIt.get<JsonConverter<T, JsonMap>>();

    final fullJson = (jsonBody as JsonMap)
      ..addAll(request.params)
      ..addAll(request.requestedUri.queryParameters);

    return jsonConverter.fromJson(fullJson);
  }

  Response problem(List<DetailedException> exceptions) =>
      problemHandler(exceptions);

  Response ok(
    Object result, {
    bool convertToJson = true,
    ContentType? contentType,
  }) {
    contentType ??= ContentType.json;

    return _createResponse(
      statusCode: HttpStatus.ok,
      body: convertToJson ? _jsonEncoder.convert(result) : result,
      headers: {
        HttpHeaders.contentTypeHeader: contentType.toString(),
      },
    );
  }

  Response created(
    Object result, {
    bool convertToJson = true,
    ContentType? contentType,
  }) {
    contentType ??= ContentType.json;

    return _createResponse(
      statusCode: HttpStatus.created,
      body: convertToJson ? _jsonEncoder.convert(result) : result,
      headers: {
        HttpHeaders.contentTypeHeader: contentType.toString(),
      },
    );
  }

  Response _createResponse({
    required int statusCode,
    Object? body,
    Map<String, Object>? headers,
    Encoding? encoding,
    Map<String, Object>? context,
  }) {
    return Response(
      statusCode,
      body: body,
      headers: headers,
      encoding: encoding,
      context: context,
    );
  }
}

Response problemHandler(List<DetailedException> exceptions) {
  return ResponseX.problem(
    problemDetails: createProblemDetails(exceptions),
  );
}

ProblemDetails createProblemDetails(List<DetailedException> exceptions) {
  if (exceptions.isEmpty) {
    return ProblemDetails();
  }

  if (exceptions.any((e) => e.type == DetailedExceptionType.validation)) {
    return _validation(exceptions);
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

  return ProblemDetails(
    status: status,
    title: error.description,
  );
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
