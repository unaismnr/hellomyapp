import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_my_app/core/color_consts.dart';
import 'package:hello_my_app/presentation/pages/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelloMyApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: kMainGreen,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: false,
      ),
      home: const AuthScreen(),
    );
  }
}
