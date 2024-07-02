import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_my_app/config/app_theme.dart';
import 'package:hello_my_app/presentation/controllers/blocs/country_bloc/country_bloc.dart';
import 'package:hello_my_app/presentation/pages/main_screen/main_screen.dart';

import 'presentation/pages/auth_screen/otp_screen.dart';
import 'presentation/pages/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CountryBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HelloMyApp',
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
        home: MainScreen(),
      ),
    );
  }
}
