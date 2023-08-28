import 'package:flutter/material.dart';
import '../Utilities/Tiles/auth_tile.dart';

class LoginPage extends StatefulWidget {
  final Function changePage;

  const LoginPage(this.changePage, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState(changePage);
  }
}

class _LoginState extends State<LoginPage> {
  final Function _changePage;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _loginData = {'email': null, 'password': Null};
  _LoginState(this._changePage);

  @override
  Widget build(BuildContext context) {
    return _buildLoginWidget(_formKey, context: context);
  }

  Form _buildLoginWidget(GlobalKey formkey, {context = BuildContext}) {
    Widget _buildEmailField() {
      return TextFormField(
        // autovalidate: true,
        // validator: (String value) {
        //   if (!isEmail(value) || value.trim().isEmpty)
        //     return 'Please enter a valid email.';
        // },

        style: const TextStyle(color: Colors.white),
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration('Email Address'),
        // onSaved: (String value) {
        //   _loginData['email'] = value;
        // },
      );
    }

    Widget _buildPasswordField() {
      return TextFormField(
        initialValue: '', // used to set the initial value
        // validator: (String value) {
        //   if (value.trim().isEmpty) return 'Please enter your password.';
        // },
        style: const TextStyle(color: Colors.white),
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration('Password'),
        // onSaved: (String value) {
        //   _loginData['password'] = value;
        // },
      );
    }

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _buildEmailField(),
          const SizedBox(
            height: 15,
          ),
          _buildPasswordField(),
          const SizedBox(
            height: 15,
          ),

          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(top: 25, right: 5),
              child: const Text(
                'Forgot Password ?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // SwitchListTile(
          //   title: Text('I accept the Terms & Conditions'),
          //   value: _acceptTerms,
          //   onChanged: (bool value) {
          //     setState(() {
          //       _acceptTerms = value;
          //     });
          //   },
          // ),
          const SizedBox(
            height: 25,
          ),
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                side: BorderSide(color: Colors.white)),
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            // color: Theme.of(context).buttonColor,
            textColor: Colors.white,
            child: const Text('Login'),
            onPressed: () {
              _formKey.currentState?.save();

              if (!_formKey.currentState!.validate()) {
                return;
              } else {
                Navigator.pushReplacementNamed(context, '/product');
              }
            },
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
          TextButton(
            child: const Text(
              'Create an account, Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: () {
              _changePage(false);
            },
          ),
        ],
      ),
    );
  }
}