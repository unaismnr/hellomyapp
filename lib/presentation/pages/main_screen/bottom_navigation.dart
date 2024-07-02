import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        NavigationDestination(
          icon: Icon(Icons.call),
          label: 'Call',
        ),
        NavigationDestination(
          icon: Icon(Icons.video_call),
          label: 'Video',
        ),
        NavigationDestination(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );

    // BottomNavigationBar(items: const [
    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.chat),
    //     label: 'Chat',
    //   ),
    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.chat),
    //     label: 'Chat',
    //   ),
    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.chat),
    //     label: 'Chat',
    //   ),
    // ]);
  }
}
