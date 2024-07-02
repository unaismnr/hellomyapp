import 'package:flutter/material.dart';
import 'package:hello_my_app/core/color_consts.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/hellomyapp.png',
                height: size.height * 0.15,
              ),
              Text(
                textAlign: TextAlign.center,
                "We have sent an OTP to your mobile number. \nIf you haven't received it, please request a",
                style: TextStyle(
                  fontSize: size.width * 0.03,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  textAlign: TextAlign.center,
                  'Resend',
                  style: TextStyle(
                    fontSize: size.width * 0.03,
                    color: kMainGreen,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: double.infinity,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: TextFormField(
                  controller: textController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '-  -  -  -  -  -',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
