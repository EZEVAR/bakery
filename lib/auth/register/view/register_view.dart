import 'package:bakery/auth/register/view/widgets/reg_email_field.dart';
import 'package:bakery/auth/register/view/widgets/reg_lastname_field.dart';
import 'package:bakery/auth/register/view/widgets/reg_name_field.dart';
import 'package:bakery/auth/register/view/widgets/reg_phone_field.dart';
import 'package:bakery/auth/register/view/widgets/signupbutton.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                const RegisternameField(),
                const SizedBox(
                  height: 25,
                ),
                const RegisterlastnameField(),
                const SizedBox(
                  height: 25,
                ),
                const RegisteremailField(),
                const SizedBox(
                  height: 25,
                ),
                const RegisterphoneField(),
                const SizedBox(
                  height: 25,
                ),
                const SignupField(),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
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
