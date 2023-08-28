import 'package:bakery/auth/auth_page.dart';
import 'package:bakery/pages/product.dart';
import 'package:bakery/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          initialLocation: '/inicio',
          routes: [
            GoRoute(
              name: Home.name,
              path: '/inicio',
              builder: (context, state) => const Home(),
            ),
            GoRoute(
              name: MyProductPage.name,
              path: '/product',
              builder: (context, state) => const MyProductPage(),
            ),
            GoRoute(
              name: AuthPage.name,
              path: '/auth',
              builder: (context, state) => const AuthPage(),
            ),
          ],
        );
  GoRouter get router {
    return _router;
  }
}
