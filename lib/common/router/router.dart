import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/features/main/widget/main_screen.dart';

final class AppRouter {
  AppRouter()
      : _router = GoRouter(
          initialLocation: '/main',
          routes: [
            GoRoute(
              path: '/main',
              builder: (BuildContext context, GoRouterState state) {
                return const MainScreen();
              },
              routes: [],
            ),
          ],
        );

  final GoRouter _router;

  RouterConfig<Object> get config => _router;
}
