import 'package:bakery/auth/login/view/widgets/custom_email_field.dart';
import 'package:bakery/auth/login/view/widgets/custom_password_field.dart';
import 'package:bakery/auth/login/view/widgets/custom_submitbutton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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

                const EmailField(),
                const SizedBox(
                  height: 25,
                ),
                const PasswordField(),
                const SizedBox(
                  height: 25,
                ),
                const SubmitField(),

                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: const Text(
                    'Or',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  child: const Text(
                    'Create an account, Register',
                    style: TextStyle(
                      color: Color.fromARGB(255, 250, 249, 249),
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () => context.go('/register'),
                ),
                // TODO Add Navigation to ForgotPassword
              ],
            ),
          ),
        ),
      ),
    );
  }
}
