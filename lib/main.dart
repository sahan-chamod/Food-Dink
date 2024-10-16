import 'package:flutter/material.dart';
import 'package:foodanddrink/screens/Login/LoginScreen.dart';
import 'package:foodanddrink/screens/onboard/OnboardScreen.dart';
import 'package:foodanddrink/screens/Forgetpassword/ForgetPassword.dart';
import 'package:foodanddrink/screens/SignIn/SignIn.dart';

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
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardScreen(),
        '/login': (context) => const LoginScreen(),
        '/forgot_password': (context) => const ForgetPassword(),
        '/signin': (context) => SignInScreen(),
      },
    );
  }
}
