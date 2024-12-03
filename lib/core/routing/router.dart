import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
    // initialLocation: FirstGlanceScreen.route,
    routes: <RouteBase>[
      // ShellRoute(
      //   builder: (context, state, child) {
      //     // TODO: Check for form id
      //     return child;
      //   },
      //   routes: [
      //     GoRoute(
      //       path: FormOverviewScreen.route,
      //       pageBuilder: (BuildContext context, GoRouterState state) =>
      //           const CustomTransitionPage(
      //         transitionsBuilder: PageBuilderUtils.buildUpSlideAnimation,
      //         child: FormOverviewScreen(),
      //       ),
      //     ),
      //   ],
      // ),
      ShellRoute(
        builder: (context, state, child) {
          return AuthScreen(child: child);
        },
        routes: [
          GoRoute(
            path: LoginScreen.route,
            pageBuilder: (BuildContext context, GoRouterState state) =>
                const NoTransitionPage(
              child: LoginScreen(),
            ),
            routes: [
              GoRoute(
                path: RegisterScreen.location,
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    const NoTransitionPage(
                  child: RegisterScreen(),
                ),
                routes: [
                  GoRoute(
                    path: VerificationCodeScreen.location,
                    pageBuilder: (BuildContext context, GoRouterState state) =>
                        NoTransitionPage(
                      child: VerificationCodeScreen(
                        email: state.extra as String,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ]);
