import 'dart:io';

import 'package:shelf/shelf.dart';

import '../../../../utils/utils.dart';

Middleware errorHandler() => (innerHandler) {
      return (request) async {
        try {
          return await innerHandler(request);
        } catch (e) {
          return ResponseX.problem(
            problemDetails: ProblemDetails(
              status: HttpStatus.internalServerError,
            ),
          );
        }
      };
    };
