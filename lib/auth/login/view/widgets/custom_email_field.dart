import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../login/cubit/login_cubit.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

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
              print('Valor recibido en email field ${value}');
              context.read<LoginCubit>().emailChanged(value);
            },
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Email Address',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
