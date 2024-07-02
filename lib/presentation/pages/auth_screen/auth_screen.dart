import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_my_app/core/color_consts.dart';
import 'package:hello_my_app/presentation/controllers/blocs/country_bloc/country_bloc.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

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
              // Welcome Text
              Text(
                'Welcome to HelloMyApp',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              // Phone number input field
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        showCountryPicker(
                          context: context,
                          onSelect: (value) {
                            context.read<CountryBloc>().add(
                                  CountryEvent.change(value),
                                );
                          },
                        );
                      },
                      child: BlocBuilder<CountryBloc, CountryState>(
                        builder: (context, state) {
                          return Text(
                            '${state.country.flagEmoji}  +${state.country.phoneCode}',
                            style: const TextStyle(
                              color: kBlackColor,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: size.width * 0.02),
                    Expanded(
                      child: TextFormField(
                        controller: textController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '-  -  -  -  -  -  -  -  -  -',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              // Send Button
              InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kMainGreen,
                  ),
                  child: const Center(
                    child: Text(
                      'Send OTP',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
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
