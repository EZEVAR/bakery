import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  // colorSchemeSeed: Color.fromARGB(255, 78, 45, 1),
  textTheme: GoogleFonts.openSansTextTheme(),
  primaryColorDark: const Color.fromARGB(255, 84, 1, 82),
  primaryColorLight: const Color.fromARGB(255, 224, 115, 239),
  primaryColor: const Color.fromARGB(255, 252, 51, 122),
  colorScheme: const ColorScheme.light(secondary: Color(0xFF009688)),
  scaffoldBackgroundColor: const Color(0xFFE0F2F1),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
