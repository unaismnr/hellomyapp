import 'package:flutter/material.dart';
import 'package:hello_my_app/core/color_consts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kMainGreen,
              kMainLigthGreen,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/hellomyapp_white.png',
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ),
      ),
    );
  }
}
