import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/common/injection/dependencies.dart';
import 'package:vandal/common/service/service_session.dart';
import 'package:vandal/common/service/storage_service.dart';
import 'package:vandal/screens/general/general_screen.dart';
import 'package:vandal/screens/login/login_screen.dart';
import 'package:vandal/screens/login/password_screen.dart';
import 'package:vandal/screens/login/success_login_screen.dart';
import 'package:vandal/screens/menu/account/account_screen.dart';

part 'router.g.dart';

extension CLRouterHelper on BuildContext {
  void popUntil(String routeLocation) {
    Navigator.of(this).popUntil(
      (route) =>
          route.isFirst ||
          !route.willHandlePopInternally &&
              route.settings.name == routeLocation,
    );
  }
}

@TypedGoRoute<RootRoute>(
  path: '/',
)
class RootRoute extends GoRouteData {
  const RootRoute();

  @override
  String redirect(BuildContext context, GoRouterState state) {
    //final storageService = getIt<StorageService>();
    final sessionService = getIt<SessionService>();

    // final isLoggedIn = storageService.readIsLoggedIn();
    // final msisdn = storageService.readMsisdn();

    if (sessionService.bearerToken != null) {
      return const MainRoute(tab: MainPageTab.home).location;
    } else {
      return const SignInRoute().location;
    }
  }
}

// SignIn Router
@TypedGoRoute<SignInRoute>(
  path: '/sign-in',
)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

@TypedGoRoute<ConfirmNumberRoute>(
  path: '/confirm-number',
)
class ConfirmNumberRoute extends GoRouteData {
  ConfirmNumberRoute({
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      PasswordScreen(phoneNumber: phoneNumber);
}

@TypedGoRoute<SuccessLoginRoute>(
  path: '/success-login',
)
class SuccessLoginRoute extends GoRouteData {
  const SuccessLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SuccessLoginScreen();
}

// Main Router
@TypedGoRoute<MainRoute>(
  path: '/main/:tab',
)
class MainRoute extends GoRouteData {
  const MainRoute({
    required this.tab,
  });

  final MainPageTab tab;

  @override
  Widget build(BuildContext context, GoRouterState state) => MainPage(
        tab: tab,
      );
}

// Profile Router
@TypedGoRoute<AccountRoute>(
  path: '/account',
)
class AccountRoute extends GoRouteData {
  const AccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountScreen();
}
