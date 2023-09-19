import 'package:bakery/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: router.router.routeInformationProvider,
      routeInformationParser: router.router.routeInformationParser,
      routerDelegate: router.router.routerDelegate,
      title: 'Bakery',
    );
  }
}
