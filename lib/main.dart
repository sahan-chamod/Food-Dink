import 'package:flutter/material.dart';
import 'package:foodanddrink/screens/onboard/OnboardScreen.dart';
import 'package:foodanddrink/screens/Login/LoginScreen.dart';
import 'package:foodanddrink/screens/Forgetpassword/ForgetPassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const OnboardScreen(),
          '/login': (context) => const LoginScreen(),
          '/forgot_password': (context) => const ForgetPassword(),
        });
  }
}
