// import 'package:bakery/pages/home.dart';
// import 'package:flutter/material.dart';
// import '../Utilities/Tiles/auth_tile.dart';

// class SignUpPage extends StatelessWidget {
//   final Function changePage;
//   const SignUpPage(this.changePage, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return _buildLoginWidget(context: context);
//   }

//   Column _buildLoginWidget({context = BuildContext}) {
//     return Column(
//       children: <Widget>[
//         TextField(
//           style: const TextStyle(color: Colors.white),
//           keyboardType: TextInputType.text,
//           decoration: textDecoration('Name'),
//           onChanged: (String value) {
//             // setState(() {});
//           },
//         ),
//         _space(),
//         TextField(
//           style: const TextStyle(color: Colors.white),
//           textInputAction: TextInputAction.done,
//           keyboardType: TextInputType.emailAddress,
//           decoration: textDecoration('Email Address'),
//           onChanged: (String value) {
//             // setState(() {});
//           },
//         ),
//         _space(),
//         TextField(
//           style: const TextStyle(color: Colors.white),
//           keyboardType: TextInputType.phone,
//           decoration: textDecoration(
//             'Phone Number',
//           ),
//           onChanged: (String value) {
//             // setState(() {});
//           },
//         ),
//         _space(),
//         TextField(
//           style: const TextStyle(color: Colors.white),
//           keyboardType: TextInputType.emailAddress,
//           decoration: textDecoration('Password'),
//           onChanged: (String value) {
//             // setState(() {});
//           },
//         ),
//         const SizedBox(
//           height: 25,
//         ),
//         MaterialButton(
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0)),
//               side: BorderSide(color: Colors.white)),
//           padding: const EdgeInsets.only(
//             left: 50,
//             right: 50,
//           ),
//           // color: Theme.of(context).buttonColor,
//           textColor: Colors.white,
//           child: const Text('Sign Up'),
//           onPressed: () => context.pushNamed(Home.name),
//         ),
//         Container(
//           margin: const EdgeInsets.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: const Text(
//             'Or',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//         MaterialButton(
//           child: const Text(
//             'Already have an account? Login ',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           onPressed: () {
//             changePage(true);
//           },
//         ),
//       ],
//     );
//   }

//   Widget _space() {
//     return const SizedBox(
//       height: 10,
//     );
//   }
// }
