import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_my_app/core/color_consts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: kMainGreen,
    ),
    textTheme: GoogleFonts.latoTextTheme(),
    useMaterial3: false,
  );
  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: kMainGreen,
    ),
    textTheme: GoogleFonts.latoTextTheme(),
    useMaterial3: false,
  );
}
