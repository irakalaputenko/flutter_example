import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/common/injection/dependencies.dart';
import 'package:vandal/common/router/router.dart';
import 'package:vandal/common/service/service_session.dart';
import 'package:vandal/common/service/translation_service.dart';

class Application extends StatelessWidget {
  const Application(
    this.routerConfig, {
    super.key,
  });

  final RouterConfig<Object> routerConfig;

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: navigatorKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(),
      routerConfig: routerConfig,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: _SessionWatcherWidget(
            routerConfig: routerConfig as GoRouter,
            child: child ?? Container(),
          ),
        );
      },
    );
  }
}

class _SessionWatcherWidget extends StatefulWidget {
  const _SessionWatcherWidget({
    Key? key,
    required this.child,
    required this.routerConfig,
  }) : super(key: key);

  final Widget child;
  final GoRouter routerConfig;

  @override
  State<_SessionWatcherWidget> createState() => _SessionWatcherWidgetState();
}

class _SessionWatcherWidgetState extends State<_SessionWatcherWidget> {
  bool loggedIn = false;
  StreamSubscription<bool>? sub;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getIt<TranslationService>().fetch(context);
    });
    sub = getIt<SessionService>().onSession.listen((value) {
      if (loggedIn && !value) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          widget.routerConfig.go(const RootRoute().location);
        });
      } else if (loggedIn != value) {
        loggedIn = value;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    sub?.cancel();
    sub = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
