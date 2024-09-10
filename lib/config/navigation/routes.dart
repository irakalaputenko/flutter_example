import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/screens/catalog/catalog_screen.dart';
import 'package:vandal/screens/favorites/favorites_screen.dart';
import 'package:vandal/screens/general/general_screen.dart';
import 'package:vandal/screens/home/home_screen.dart';
import 'package:vandal/screens/login/login_screen.dart';
import 'package:vandal/screens/login/password_screen.dart';
import 'package:vandal/screens/login/success_login_screen.dart';
import 'package:vandal/screens/menu/account/account_screen.dart';
import 'package:vandal/screens/menu/contacts/contacts_screen.dart';
import 'package:vandal/screens/menu/menu_screen.dart';
import 'package:vandal/screens/menu/order/order_screen.dart';
import 'package:vandal/screens/menu/orders/my_orders_screen.dart';
import 'package:vandal/screens/menu/questions/questions_screen.dart';
import 'package:vandal/screens/menu/reviews/reviews_screen.dart';
import 'package:vandal/screens/menu/settings/settings_screen.dart';
import 'package:vandal/screens/menu/waiting_list/waiting_list_screen.dart';
import 'package:vandal/screens/shop/shop_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const LoginScreen(),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          );
        },
        routes: [
          GoRoute(
            path: 'password',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: PasswordScreen(
                  phoneNumber: state.extra as String,
                ),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              );
            },
          ),
          GoRoute(
            path: 'success-login',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: const SuccessLoginScreen(),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              );
            },
          ),
          // GoRoute(
          //   path: '/general',
          //   builder: (context, state) => const GeneralScreen(),
          // ),
          ShellRoute(
              navigatorKey: _shellNavigatorKey,
              builder: (context, state, child) {
                return MainPage(tab: MainPageTab.home);
              },
              routes: [
                GoRoute(
                  path: 'home',
                  parentNavigatorKey: _shellNavigatorKey,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      child: const HomeScreen(),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    );
                  },
                ),
                GoRoute(
                  path: 'catalog',
                  parentNavigatorKey: _shellNavigatorKey,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      child: const CatalogScreen(),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    );
                  },
                ),
                GoRoute(
                  path: 'shop',
                  parentNavigatorKey: _shellNavigatorKey,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      child: const ShopScreen(),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    );
                  },
                ),
                GoRoute(
                  path: 'favorites',
                  parentNavigatorKey: _shellNavigatorKey,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      child: const FavoritesScreen(),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    );
                  },
                ),
                GoRoute(
                    path: 'menu',
                    parentNavigatorKey: _shellNavigatorKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        key: state.pageKey,
                        child: const MenuScreen(),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      );
                    },
                    routes: [
                      GoRoute(
                          path: 'orders',
                          parentNavigatorKey: _shellNavigatorKey,
                          pageBuilder: (context, state) {
                            return CustomTransitionPage(
                              key: state.pageKey,
                              child: const MyOrdersScreen(),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c),
                            );
                          },
                          routes: [
                            GoRoute(
                              path: 'order-screen',
                              parentNavigatorKey: _shellNavigatorKey,
                              pageBuilder: (context, state) {
                                return CustomTransitionPage(
                                  key: state.pageKey,
                                  child: const OrderScreen(),
                                  transitionsBuilder: (_, a, __, c) =>
                                      FadeTransition(opacity: a, child: c),
                                );
                              },
                            ),
                          ]),
                      GoRoute(
                        path: 'waiting-list',
                        parentNavigatorKey: _shellNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            child: const WaitingListScreen(),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          );
                        },
                      ),
                      GoRoute(
                        path: 'settings',
                        parentNavigatorKey: _shellNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            child: const SettingsScreen(),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          );
                        },
                      ),
                      GoRoute(
                        path: 'contacts',
                        parentNavigatorKey: _shellNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            child: const ContactsScreen(),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          );
                        },
                      ),
                      GoRoute(
                        path: 'questions',
                        parentNavigatorKey: _shellNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            child: const QuestionsScreen(),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          );
                        },
                      ),
                      GoRoute(
                        path: 'account',
                        parentNavigatorKey: _shellNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            child: const AccountScreen(),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          );
                        },
                      ),
                      GoRoute(
                        path: 'reviews',
                        parentNavigatorKey: _shellNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            child: const ReviewsScreen(),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          );
                        },
                      ),
                    ]),
              ]),
        ]),
  ],
);
