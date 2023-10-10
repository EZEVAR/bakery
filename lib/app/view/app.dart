import 'package:authentication_repository/authentication_repository.dart';
import 'package:bakery/services/database/database_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/list_products/cubit/product_list_cubit.dart';
import '../../routes/app_router.dart';
import '../../theme.dart';
import '../bloc/app_bloc.dart';

class App extends StatelessWidget {
  const App({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => AppBloc(
              authenticationRepository: _authenticationRepository,
            ),
          ),
          BlocProvider(
            create: (context) => ProductListCubit(
              DatabaseRepositoryImpl(),
            ),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.top,
    // ]);

    final AppBloc appBloc = context.watch<AppBloc>();
    final router = AppRouter(appBloc);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routeInformationProvider: router.router.routeInformationProvider,
      routeInformationParser: router.router.routeInformationParser,
      routerDelegate: router.router.routerDelegate,
      title: 'Bakery',
    );
  }
}
