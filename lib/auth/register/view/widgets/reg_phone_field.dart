import 'package:bakery/auth/register/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterphoneField extends StatelessWidget {
  const RegisterphoneField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Container(
          width: size.width * 0.80,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: TextFormField(
            onChanged: (value) {
              print('Valor recibido en phone field ${value}');
              context.read<RegisterCubit>().phoneChanged(value);
            },
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Número de Telefono',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              errorText: state.phoneInput.invalid
                  ? 'complete sin espacios ni 0 '
                  : null,
            ),
          ),
        );
      },
    );
  }
}
