import 'dart:io';

import 'package:itrust_server/itrust_server.dart';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> args) async {
  _configLogger();

  final app = Router()..mount('/auth/', AuthAPI().router);

  final handler = Pipeline().addMiddleware(logRequests()).addHandler(app);

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);

  print('Server listening on port ${server.port}');
}

void _configLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print(
      '[${record.time}] '
      '${record.level.name} | '
      '${record.loggerName}: '
      '${record.message}',
    );
  });
}
