import 'package:bakery/auth/register/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisteremailField extends StatelessWidget {
  const RegisteremailField({super.key});

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
              context.read<RegisterCubit>().emailChanged(value);
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
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
