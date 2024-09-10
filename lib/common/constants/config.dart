import 'package:injectable/injectable.dart';

enum _Environment {
  dev(
    'dev',
    authUrl: 'https://app.vandal.one/api',
    baseUrl: 'https://app.vandal.one/api',
    cdnUrl: 'https://app.vandal.one/api',
  ),
  //TODO: Change base url when we have PROD server
  prod(
    'prod',
    authUrl: 'https://app.vandal.one/api',
    baseUrl: 'https://app.vandal.one/api',
    cdnUrl: 'https://app.vandal.one/api',
  );

  final String env;
  final String authUrl;
  final String baseUrl;
  final String cdnUrl;

  const _Environment(
    this.env, {
    required this.authUrl,
    required this.baseUrl,
    required this.cdnUrl,
  });

  factory _Environment.forEnv(String env) {
    return _Environment.values.firstWhere(
      (it) => it.env == env,
      orElse: () => _Environment.prod,
    );
  }
}

@injectable
class Config {
  static const isNotPublicBuild = !isPublicBuild;
  static const isPublicBuild =
      bool.fromEnvironment('PUBLIC_BUILD', defaultValue: true);

  static final _env = _Environment.forEnv(const String.fromEnvironment('ENV'));

  Uri get baseUrl => Uri.parse(_env.baseUrl);

  Uri get authUrl => Uri.parse(_env.authUrl);

  Uri get cdnUrl => Uri.parse(_env.cdnUrl);
}
