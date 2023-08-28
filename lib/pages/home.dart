import 'package:flutter/material.dart';
import '../auth/auth_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const name = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthPage(
          // onPressed: () => context.pushNamed(MyProductPage.name),
          ),
    );
  }
}
