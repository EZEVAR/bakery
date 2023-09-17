import 'package:bakery/auth/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Container(
          width: size.width * 0.80,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: TextFormField(
            onChanged: (value) {
              print('Valor recibido en password field ${value}');
              context.read<LoginCubit>().passwordChanged(value);
            },
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              errorText: state.passwordInput.invalid
                  ? 'Minimo 8 caracteres, debe contener al menos 1 numero'
                  : null,
            ),
          ),
        );
      },
    );
  }
}
