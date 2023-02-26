import 'package:itrust_server/itrust_server.dart';

const _printLogsKey = 'print_logs';
const _envKey = 'env';

const _defaultPort = 8080;

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
    ..post(
      registerRoute,
      _getIt.get<AuthController>().register,
    )
    ..post(
      logInRoute,
      _getIt.get<AuthController>().logIn,
    )
    ..post(
      logOutRoute,
      Pipeline()
          .addMiddleware(_authorize())
          .addHandler(_getIt.get<AuthController>().logOut),
    )
    ..post(
      verifyTokenRoute,
      _getIt.get<AuthController>().verifyToken,
    )
    ..mount(
      feedRoute,
      Pipeline()
          .addMiddleware(_authorize())
          .addHandler(_getIt.get<FeedController>().router),
    );

  final handler = Pipeline()
      .addMiddleware(
        logRequests(
          logger: (message, isError) =>
              isError ? _logger.warning(message) : _logger.info(message),
        ),
      )
      .addHandler(app);

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '$_defaultPort');
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

Middleware _authorize() => authorize(
      jwtSettings: _getIt.get<JwtSettings>(),
      jwtTokenService: _getIt.get<JwtTokenService>(),
      endUserRepository: _getIt.get<EndUserRepository>(),
      tokenRepository: _getIt.get<TokenRepository>(),
    );
