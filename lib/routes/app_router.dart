// import 'package:bakery/auth/login/view/login_page.dart';
import 'package:bakery/auth/register/view/register_page.dart';
import 'package:bakery/pages/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../auth/login/login_page.dart';
import '../auth/login/sign_up_page.dart';
import '../auth/login/view/widgets/splash_screen.dart';

class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          initialLocation: '/login',
          routes: [
            GoRoute(
              name: MyProductPage.name,
              path: '/product',
              builder: (context, state) => const MyProductPage(),
            ),
            GoRoute(
              name: SplashScreen.name,
              path: '/splash',
              builder: (context, state) => const SplashScreen(),
            ),
            GoRoute(
              name: LoginPage.name,
              path: '/login',
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              name: SignUpPage.name,
              path: '/signup',
              builder: (context, state) => const SignUpPage(),
            ),
            GoRoute(
              name: RegisterPage.name,
              path: '/register',
              builder: (context, state) => const RegisterPage(),
            ),
          ],
        );
  GoRouter get router {
    return _router;
  }
}
