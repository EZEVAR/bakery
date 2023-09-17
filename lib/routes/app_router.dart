
import 'package:bakery/auth/login/view/login_page.dart';
import 'package:bakery/pages/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          initialLocation: '/login',
          routes: [
            // GoRoute(
            //   name: Home.name,
            //   path: '/inicio',
            //   builder: (context, state) => const Home(),
            // ),
            GoRoute(
              name: MyProductPage.name,
              path: '/product',
              builder: (context, state) => const MyProductPage(),
            ),
            GoRoute(
              name: LoginPage.name,
              path: '/login',
              builder: (context, state) => const LoginPage(),
            ),
          ],
        );
  GoRouter get router {
    return _router;
  }
}
