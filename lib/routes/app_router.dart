import 'package:bakery/app/app.dart';
import 'package:bakery/auth/register/view/register_page.dart';
import 'package:bakery/onboard/onboarding_page/onboarding_page.dart';
import 'package:bakery/pages/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../login/view/login_page.dart';
import '../sign_up/view/sign_up_page.dart';

class AppRouter {
  final AppBloc appBloc;
  final GoRouter _router;

  AppRouter(AppBloc this.appBloc)
      : _router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          initialLocation: '/product',
          routes: [
            GoRoute(
              name: MyProductPage.name,
              path: "/product",
              builder: (context, state) => MyProductPage(),
              redirect: (context, state) {
                print('Estado de la Auth ${appBloc.state.status.toString()}');
                if (appBloc.state.status == AppStatus.unauthenticated) {
                  return "/login";
                }
                return "/product";
              },
            ),
            GoRoute(
              name: OnBoardingPage.name,
              path: '/onboard',
              builder: (context, state) => const OnBoardingPage(),
            ),
            // GoRoute(
            //   name: MyProductPage.name,
            //   path: '/product',
            //   builder: (context, state) => const MyProductPage(),
            // ),
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
