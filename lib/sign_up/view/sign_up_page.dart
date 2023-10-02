import 'package:authentication_repository/authentication_repository.dart';
import 'package:bakery/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static const name = 'signup';

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: const AssetImage('assets/fondo.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.dstATop,
            ),
          ),
        ),
        padding: const EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/icons/cupcakeicon.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: const Text(
                    'Bakery',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                BlocProvider<SignUpCubit>(
                  create: (_) =>
                      SignUpCubit(context.read<AuthenticationRepository>()),
                  child: const SignUpForm(),
                ),
                const SizedBox(height: 5), 
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Already have an account? LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
