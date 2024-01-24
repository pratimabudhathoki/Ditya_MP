import 'package:coffee_shop/features/auth/views/screens/login_screen.dart';
import 'package:coffee_shop/src/home_detail.dart';
import 'package:coffee_shop/src/home_screen.dart';
import 'package:coffee_shop/src/landing_screen.dart';
import 'package:coffee_shop/src/profile_detail.dart';
import 'package:coffee_shop/src/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorAddKey = GlobalKey<NavigatorState>(debugLabel: 'shellAdd');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

// the one and only GoRouter instance
final goRouter = GoRouter(
  initialLocation: '/login',
  navigatorKey: _rootNavigatorKey,
  routes: [
    // Stateful nested navigation based on:
    // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // the UI shell
        return LandingScreen(navigationShell: navigationShell);
      },
      branches: [
        // first branch (A)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/a',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: HomeScreen(),
              ),
              routes: [
                // child route
                GoRoute(
                    path: 'details',
                    builder: (context, state) => const HomeDetail(),
                    routes: [
                      GoRoute(
                        path: 'profile',
                        builder: (context, state) => ProfileDetail(
                          profileId: state.extra as String,
                        ),
                      )
                    ]),
              ],
            ),
          ],
        ),
        //Add post branch
        StatefulShellBranch(navigatorKey: _shellNavigatorAddKey, routes: [
          GoRoute(
            path: '/add',
            builder: (context, state) {
              return SizedBox.shrink();
            },
          )
        ]),
        // second branch (B)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/b',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ProfileScreen(),
              ),
              routes: [
                // child route
                GoRoute(
                    path: 'details',
                    builder: (context, state) => ProfileDetail(
                          profileId: state.extra as String,
                        )),
              ],
            ),
          ],
        ),
      ],
    ),

    GoRoute(
      path: '/login',
      builder: (context, state) {
        return LoginScreen();
      },
    ),
     GoRoute(
      path: '/',
      builder: (context, state) {
        return HomeScreen();
      },
    ),
  ],
);
