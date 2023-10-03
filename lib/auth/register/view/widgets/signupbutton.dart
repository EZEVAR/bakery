import 'package:bakery/auth/register/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupField extends StatelessWidget {
  const SignupField({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Delete the following fields
    // String name = "";
    // String lastname = '';
    // String email = '';
    // String password = '';
    // String phone = '';

    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: MaterialButton(
            onPressed: () {
              /// state.statusName.value
              /// Recordar el usar el .value cuando se usa Formz
              // context.read<RegisterCubit>().addUsuario(
              //       state.nameInput.value,
              //       state.lastnameInput.value,
              //       state.emailInput.value,
              //       state.passwordInput.value,
              //       state.phoneInput.value,
              //     );
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
                "SIGN UP",
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
