import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/hellomyapp.png', // Replace with your background image URL
              // fit: BoxFit.cover,
            ),
          ),
          // Foreground Content
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // User Info
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(
                            'assets/hellomyapp.png'), // Replace with the user's image URL
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Catherine Lynch',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '02:35',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Call Controls
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CallControlButton(
                        icon: Icons.wb_sunny_outlined,
                        label: 'Effects',
                        onPressed: () {
                          // Handle Effects button press
                        },
                      ),
                      CallControlButton(
                        icon: Icons.mic_off,
                        label: 'Mute',
                        onPressed: () {
                          // Handle Mute button press
                        },
                      ),
                      CallControlButton(
                        icon: Icons.flip_camera_ios,
                        label: 'Flip',
                        onPressed: () {
                          // Handle Flip button press
                        },
                      ),
                      CallControlButton(
                        icon: Icons.call_end,
                        label: 'End',
                        onPressed: () {
                          // Handle End call button press
                        },
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CallControlButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const CallControlButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.color = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          color: color,
          iconSize: 30.0,
          onPressed: onPressed,
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
