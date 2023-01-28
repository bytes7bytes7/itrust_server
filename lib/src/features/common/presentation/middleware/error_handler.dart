import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../../../../utils/utils.dart';

Middleware errorHandler() => (innerHandler) {
      return (request) async {
        try {
          return await innerHandler(request);
        } catch (e) {
          return Response.internalServerError(
            body: json.encode(
              ProblemDetails(
                status: HttpStatus.internalServerError,
              ).toJson(),
            ),
            headers: {
              HttpHeaders.contentTypeHeader:
                  ContentTypeX.problemJson.toString(),
            },
          );
        }
      };
    };
