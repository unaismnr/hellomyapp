import 'package:flutter/material.dart';
import 'package:hello_my_app/presentation/pages/chat_screen.dart';
import 'package:hello_my_app/presentation/pages/main_screen/bottom_navigation.dart';

import '../call_screen/call_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CallScreen(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
