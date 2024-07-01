import 'package:flutter/material.dart';
import 'package:hello_my_app/core/size_consts.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/hellomyapp.png',
                  height: size.height * 0.2,
                ),
                const KHeight20(),
                // Welcome Text
                Text(
                  'Welcome to HelloMyApp',
                  style: TextStyle(
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const KHeight10(),
                // Phone number input field
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Country Code Dropdown
                    DropdownButton<String>(
                      value: '+1',
                      items: <String>['+1', '+91', '+44', '+61']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        // Handle country code change
                      },
                    ),
                    const SizedBox(width: 10.0),
                    // Phone Number TextField
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Phone number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                // Send Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle send button press
                    },
                    child: const Text('Send'),
                  ),
                ),
                const Spacer(),
                // Privacy Policy Text
                const Text(
                  'Read our Privacy Policy. Tap "Agree & Continue" to accept the Terms of Service.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),
                // Footer
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'FACEBOOK',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
