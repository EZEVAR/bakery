import 'package:bakery/login/view/login_page.dart';
import 'package:bakery/auth/register/view/register_page.dart';
import 'package:bakery/pages/onboarding_page.dart';
import 'package:bakery/sign_up/sign_up.dart';
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
            GoRoute(
              name: OnBoardingPage.name,
              path: '/onboarding',
              builder: (context, state) => const OnBoardingPage(),
            ),
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
