import 'package:bakery/auth/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});
  static const name = 'splash';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      () => GoRouter.of(context).go('/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Bienvenido, gracias por elejirnos ",
          style: TextStyle(
            color: const Color.fromARGB(255, 173, 33, 243),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
