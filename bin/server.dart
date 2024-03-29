import 'package:itrust_server/itrust_server.dart';

import 'router_authorization_x.dart';

const _portKey = 'port';
const _printLogsKey = 'print_logs';
const _envKey = 'env';

final _getIt = GetIt.instance;
final _logger = Logger('main');

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption(
      _portKey,
      defaultsTo: '8080',
    )
    ..addOption(
      _envKey,
      defaultsTo: 'prod',
    )
    ..addFlag(
      _printLogsKey,
      defaultsTo: false,
    );

  final result = parser.parse(args);

  final portStr = result[_portKey];
  final env = result[_envKey];
  final printLogs = result[_printLogsKey];

  _configLogger(
    printLogs: printLogs,
  );

  await configInjector(env: env);

  final app = Router()
    ..mount(
      AuthController.path,
      _getIt.get<AuthController>().router,
    )
    ..mount(
      RulesController.path,
      _getIt.get<RulesController>().router,
    )
    ..mount(
      UserController.path,
      _getIt.get<UserController>().router.addAuthorization(),
    )
    ..mount(
      AccountController.path,
      _getIt.get<AccountController>().router.addAuthorization(),
    )
    ..mount(
      FeedController.path,
      _getIt.get<FeedController>().router.addAuthorization(),
    )
    ..mount(
      PostController.path,
      _getIt.get<PostController>().router.addAuthorization(),
    )
    ..mount(
      MediaController.path,
      _getIt.get<MediaController>().router.addAuthorization(),
    )
    ..mount(
      ChatController.path,
      _getIt.get<ChatController>().router.addAuthorization(),
    );

  final handler = Pipeline()
      .addMiddleware(
        logRequests(
          logger: (message, isError) =>
              isError ? _logger.shout(message) : _logger.info(message),
        ),
      )
      .addHandler(app);

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(portStr);
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
