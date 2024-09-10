// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
      $signInRoute,
      $confirmNumberRoute,
      $successLoginRoute,
      $mainRoute,
      $accountRoute,
    ];

RouteBase get $rootRoute => GoRouteData.$route(
      path: '/',
      factory: $RootRouteExtension._fromState,
    );

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/sign-in',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/sign-in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $confirmNumberRoute => GoRouteData.$route(
      path: '/confirm-number',
      factory: $ConfirmNumberRouteExtension._fromState,
    );

extension $ConfirmNumberRouteExtension on ConfirmNumberRoute {
  static ConfirmNumberRoute _fromState(GoRouterState state) =>
      ConfirmNumberRoute(
        phoneNumber: state.uri.queryParameters['phone-number']!,
      );

  String get location => GoRouteData.$location(
        '/confirm-number',
        queryParams: {
          'phone-number': phoneNumber,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $successLoginRoute => GoRouteData.$route(
      path: '/success-login',
      factory: $SuccessLoginRouteExtension._fromState,
    );

extension $SuccessLoginRouteExtension on SuccessLoginRoute {
  static SuccessLoginRoute _fromState(GoRouterState state) =>
      const SuccessLoginRoute();

  String get location => GoRouteData.$location(
        '/success-login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mainRoute => GoRouteData.$route(
      path: '/main/:tab',
      factory: $MainRouteExtension._fromState,
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => MainRoute(
        tab: _$MainPageTabEnumMap._$fromName(state.pathParameters['tab']!),
      );

  String get location => GoRouteData.$location(
        '/main/${Uri.encodeComponent(_$MainPageTabEnumMap[tab]!)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$MainPageTabEnumMap = {
  MainPageTab.home: 'home',
  MainPageTab.catalog: 'catalog',
  MainPageTab.shop: 'shop',
  MainPageTab.favorites: 'favorites',
  MainPageTab.menu: 'menu',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

RouteBase get $accountRoute => GoRouteData.$route(
      path: '/account',
      factory: $AccountRouteExtension._fromState,
    );

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => const AccountRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
