import 'package:bakery/auth/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupField extends StatelessWidget {
  const SignupField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: MaterialButton(
            onPressed: () {
              context.read<LoginCubit>().signUpWithEmailAndPassword(
                    state.emailInput.value,
                    state.passwordInput.value,
                  );
              print('BOTON FUNCIONA');
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 60.0,
              width: 175.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 247, 11, 164),
                    Color.fromARGB(255, 248, 96, 197)
                  ])),
              padding: const EdgeInsets.all(0),
              child: const Text(
                "LOGIN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
