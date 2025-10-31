import 'package:carrental/presentation/Auth/forgot_password_screen.dart';
import 'package:carrental/presentation/Auth/otp_screen.dart';
import 'package:carrental/presentation/Auth/signIn_screen.dart';
import 'package:carrental/presentation/Auth/signUp_screen.dart';
import 'package:carrental/presentation/home_page_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/signUp': (context) => const SignupScreen(),
        '/signIn': (context) => const SigninScreen(),
        '/forgotPassword': (context) => const ForgotPasswordScreen(),
        '/homeScreen': (context) => const HomePageScreen(),
      },
      home: const SigninScreen(),
    );
  }
}
