import 'package:bakery/auth/login/cubit/login_cubit.dart';
import 'package:bakery/auth/login/view/widgets/custom_email_field.dart';
import 'package:bakery/auth/login/view/widgets/custom_password_field.dart';
import 'package:bakery/auth/login/view/widgets/custom_submitbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../services/firebase/firebase_service.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.toString();
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

                EmailField(_emailController),
                const SizedBox(
                  height: 25,
                ),
                PasswordField(_passwordController),
                const SizedBox(
                  height: 25,
                ),
                // SignupField(_signIn),
                TextButton(
                  onPressed: () async {
                    {
                      String email = _emailController.text;
                      String password = _passwordController.text;

                      User? user = await _auth.signInWithEmailAndPassword(
                          email, password);

                      if (user != null) {
                        print("User is successfully signedIn");
                        ;
                      } else {
                        print("Some error happend");
                      }
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Create an account.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 249, 249),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        onPressed: () => context.go('/signup'),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Color.fromARGB(255, 252, 249, 250),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ))
                  ],
                ),
                // TODO Add Navigation to ForgotPassword
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _signIn() async {
  //   String email = _emailController.text;
  //   String password = _passwordController.text;

  //   User? user = await _auth.signInWithEmailAndPassword(email, password);

  //   if (user != null) {
  //     print("User is successfully signedIn");
  //     Navigator.pushNamed("/product" as BuildContext);
  //   } else {
  //     print("Some error happend");
  //   }
  // }
}
