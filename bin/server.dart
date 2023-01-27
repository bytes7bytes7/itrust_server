import 'package:itrust_server/itrust_server.dart';

const _printLogsKey = 'print_logs';
const _envKey = 'env';

final _getIt = GetIt.instance;
final _logger = Logger('main');

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption(
      _envKey,
      defaultsTo: 'prod',
    )
    ..addFlag(
      _printLogsKey,
      defaultsTo: false,
    );

  final result = parser.parse(args);
  final env = result[_envKey];
  final printLogs = result[_printLogsKey];

  _configLogger(
    printLogs: printLogs,
  );

  await configInjector(env: env);

  final app = Router()
    ..mount(
      authRoute,
      _getIt.get<AuthController>().router,
    );

  final handler = Pipeline().addMiddleware(logRequests()).addHandler(app);

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);

  _logger.info('Server listening on port ${server.port}');
}

void _configLogger({required bool printLogs}) {
  if (printLogs) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      // ignore: avoid_print
      print(
        '[${record.time}] '
        '${record.level.name} | '
        '${record.loggerName}: '
        '${record.message}',
      );
    });
  }
}
