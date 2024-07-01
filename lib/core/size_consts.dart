import 'package:flutter/material.dart';

class KHeight10 extends StatelessWidget {
  const KHeight10({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.015,
    );
  }
}

class KHeight20 extends StatelessWidget {
  const KHeight20({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.030,
    );
  }
}
