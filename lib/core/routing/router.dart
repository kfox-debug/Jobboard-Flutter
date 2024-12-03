import 'package:flutter/material.dart';
import 'package:flutter_exam/features/authentication/screens/base_auth_screen.dart';
import 'package:flutter_exam/features/authentication/screens/email_login_screen.dart';
import 'package:flutter_exam/features/authentication/screens/first_glance_screen.dart';
import 'package:flutter_exam/features/authentication/screens/login_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: FirstGlanceScreen.route,
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        return BaseAuthScreen(
          canPop: state.fullPath != FirstGlanceScreen.route,
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: FirstGlanceScreen.route,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const NoTransitionPage(
            child: FirstGlanceScreen(),
          ),
          routes: [
            GoRoute(
              path: LoginScreen.location,
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  const NoTransitionPage(
                child: LoginScreen(),
              ),
              routes: [
                GoRoute(
                  path: EmailLoginScreen.location,
                  pageBuilder: (BuildContext context, GoRouterState state) =>
                      const NoTransitionPage(
                    child: EmailLoginScreen(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
