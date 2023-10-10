import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  // colorSchemeSeed: Color.fromARGB(255, 78, 45, 1),.

  textTheme: GoogleFonts.openSansTextTheme(),
  primaryColorDark: const Color.fromARGB(255, 36, 1, 35),
  primaryColorLight: const Color.fromARGB(255, 129, 111, 164),
  primaryColor: const Color.fromARGB(255, 252, 51, 122),
  secondaryHeaderColor: const Color.fromARGB(255, 25, 32, 75),
  colorScheme: const ColorScheme.light(secondary: Color(0xFF009688)),

  scaffoldBackgroundColor: const Color(0xFFE0F2F1),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 235, 3, 3)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    // hintText: 'Enter your product title',
    labelStyle: TextStyle(color: Colors.white),
    errorStyle: TextStyle(
      color: Colors.white,
    ),
  ),
);
