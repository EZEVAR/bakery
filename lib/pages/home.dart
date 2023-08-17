import 'package:bakery/pages/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const name = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To Home Page'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: TextButton(
            child: const Text('Ir a Productos'),
            onPressed: () => context.pushNamed(MyProductPage.name),
          ),
        ),
      ),
    );
  }
}
