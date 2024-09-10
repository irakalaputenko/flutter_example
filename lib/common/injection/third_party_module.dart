import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:uuid/uuid.dart';
import 'package:vandal/common/router/router.dart';

@module
abstract class ThirdPartyModule {
  GoRouter get router => GoRouter(
        routes: $appRoutes,
        debugLogDiagnostics: kDebugMode,
      );

  // final loggerProvider = LoggerProvider();

  // Logger getLogger(LoggerProvider provider) => provider.logger;

  Uuid get uuid => const Uuid();

  @singleton
  Connectivity get connectivity => Connectivity();

  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker.createInstance();

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
