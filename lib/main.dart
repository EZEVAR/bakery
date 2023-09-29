import 'package:bakery/bloc_observer.dart';
import 'package:bakery/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/app_bloc.dart';
import 'firebase_options.dart';
import 'package:bakery/packages/authentication_repository/lib/src/authentication_repository.dart';

// void main() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MainApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp();

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  runApp(MainApp(authenticationRepository: authenticationRepository));
}

// class MainApp extends StatefulWidget {
//   const MainApp({super.key});

//   @override
//   State<MainApp> createState() => _MainAppState();
// }
class MainApp extends StatelessWidget {
  const MainApp({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     final router = AppRouter();

//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routeInformationProvider: router.router.routeInformationProvider,
//       routeInformationParser: router.router.routeInformationParser,
//       routerDelegate: router.router.routerDelegate,
//       title: 'Bakery',
//     );
//   }
// }
class AppView extends StatelessWidget {
  const AppView({super.key});

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
