import 'package:flutter/material.dart';

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
                // TODO Add Email InputField
                // TODO Add Password InputField
                // TODO Add Summit Button
                // TODO Add Navigation to Signup Page
                // TODO Add Navigation to ForgotPassword
              ],
            ),
          ),
        ),
        // child: Center(
        //   child: Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text('Completar con Widgets del formulario'),
        //         // EmailField(),
        //         // SizedBox(height: 16),
        //         // PasswordField(),
        //         // SizedBox(height: 24),
        //         // SubmitButton(),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
